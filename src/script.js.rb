require 'opal'
require 'native'
require 'promise'
require 'browser/setup/full'

Rectangle = Struct.new(:x, :y, :width, :height)
mouse = Struct.new(:x, :y, :drag).new(0, 0, false)
$maximized = Struct.new(:x, :y, :width, :height, :element).new(0, 0, 0, 0, false)


def maximize_window(element)
  if $maximized.element
    $maximized.element = false
    element.style.apply {
      #position 'absolute'
      position 'fixed'
      top $maximized.y.px
      left $maximized.x.px
    }
    element.at_css('.window-body').style.apply {
      width $maximized.width.px
      height $maximized.height.px
      resize 'both'
    }
  else
    $maximized.element = element
    $maximized.x = element.position.x
    $maximized.y = element.position.y
    $maximized.width = element.at_css('.window-body').width
    $maximized.height = element.at_css('.window-body').height
    element.style.apply {
      position 'fixed'
      top 0.px
      left 0.px
    }
    element.at_css('.window-body').style.apply {
      width ($document.window.size.inner_width - 30).px
      height ($document.window.size.inner_height - 44).px
      resize 'none'
    }
  end
end

def open_window(iframe_url)
  windows = $document.at_css('.window_handler')
  elem = Browser::DOM::Element.new(:div)
  elem.add_class 'window'
  windows << elem
  elem.inner_dom do
    div.draggable(class: 'title-bar') do
      div(class: 'title-bar-text') { 
        key.to_s
      }
      div(class: 'title-bar-controls') do
        #button("aria-label": "Minimize")
        button("aria-label": "Maximize").maximize
        button("aria-label": "Close").close
      end
    end
    div(class: "window-body iframe_container") { 
      iframe(src: iframe_url, class: 'iframe_item') {}
    }
  end
end

$document.ready do
  guide = $document.css('.guide')
  draggable = $document.css('.draggable')
  windows = $document.css('.window')
  game_buttons = $document.css('.toggle_game').to_a
  game_element_cache = {}


  draggable_cached_position = []

  #$document.at_css('.window_handler').remove

  #$document.body.style.apply {
  #  height ($document.scroll.height + 50).px
  #  #height (50).px
  #}


  # maximizes windows
  windows.each do |element|
    element.on(:click, '.maximize') do |e|
      e.prevent
      maximize_window(element)
    end
    element.on(:dblclick, '.title-bar') do |e|
      maximize_window(element)
    end
    element.on(:click, '.close') do |e|
      e.prevent
      $maximized.element = false
      element.remove
    end
  end

  # re-sort windows when one is clicked on
  windows.each do |element|
    element.on :mousedown do |e|
      draggable.unshift draggable.delete(element.at_css('.title-bar'))
      draggable.each_with_index do |elem, index|
        elem.parent.style.apply {
          z index: draggable.length - index
        }
      end
    end
  end

  game_buttons.each do |element|
    #element.parent.at_css('.game_placeholder').hide

    # this should be set by default somehow
    elem = element.parent.at_css('.game_container')
    game_element_cache[element] = elem
    elem.remove

    element.on :click do |e|
      if !game_element_cache[element].nil?
        element.inner_dom = "Close Game"
        game_element_cache[element].prepend_to(element.parent)
        game_element_cache[element] = nil
        element.parent.at_css('.game_placeholder').hide
      else
        element.inner_dom = "Load Game"
        elem = element.parent.at_css('.game_container')
        game_element_cache[element] = elem
        elem.remove
        element.parent.at_css('.game_placeholder').show
      end
    end
  end

  # set window to "drag" mode when clicked on and reset when let go
  draggable.each do |element|
    element.on :mousedown do |e|
      next if $maximized.element
      mouse.drag = element
      mouse.x = e.page.x - element.parent.position.x
      mouse.y = e.page.y - element.parent.position.y
      element.parent.style.apply {
        top (e.page.y.px - mouse.y - $document.scroll.y).px
        left (e.page.x.px - mouse.x - $document.scroll.x).px
        #position 'absolute'
        position 'fixed'
      }
      $document.one :mouseup do |e|
        mouse.drag = false
      end
    end
  end

  # when a window is in "drag" mode, move window to mouse cursor
  $document.on :mousemove do |e|
    if mouse.drag
      mouse.drag.parent.style.apply {
        top (e.page.y.px - mouse.y - $document.scroll.y).px
        left (e.page.x.px - mouse.x - $document.scroll.x).px
      }
    end
  end
  draggable.each do |element|
    draggable_cached_position.push Rectangle.new(
      element.position.x + (-20..20).to_a.sample, #+ element.parent.position.x,
      element.position.y + 110 + 25 + (-20..20).to_a.sample, #+ element.parent.position.y,
      element.width - 15,
      element.height,
    )
  end
  draggable.each_with_index do |element, index|
    element.parent.style.apply {
      top draggable_cached_position[index].y.px
      left draggable_cached_position[index].x.px
      position 'fixed'
      z index: draggable.length - index
    }
    element.parent.at_css('.window-body').style.apply {
      width draggable_cached_position[index].width.px
      height draggable_cached_position[index].height.px
    }
  end
=begin
  DOM do
    h2.opal do
      "Hello World from Opal!"
    end
    p.opal {"This part was generated by Opal from Javascript (:"}
    h2.articles do
      "Here is some articles that were generated using the processing system:"
    end
    p.articles do 
      a(href: '/articles').articles { "Articles" }
    end
  end.append_to($document.body)
=end
end
