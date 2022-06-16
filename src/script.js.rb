require 'opal'
require 'native'
require 'promise'
require 'browser/setup/full'

Rectangle = Struct.new(:x, :y, :width, :height)
Mouse = Struct.new(:x, :y, :drag).new(0, 0, false)
$maximized = Struct.new(:x, :y, :width, :height, :element).new(0, 0, 0, 0, false)
Draggable = []


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
      width ($document.window.size.inner_width - 29).px
      height ($document.window.size.inner_height - 50).px
      resize 'none'
    }
  end
end

def add_window_functionality(element)
  draggable_elem = element.at_css('.draggable')
  Draggable.unshift draggable_elem

  #Button Handlers
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

  # Place on top
  Draggable.each_with_index do |elem, index|
    elem.parent.style.apply {
      z index: Draggable.length - index
    }
  end

  # On click bring to front
  element.on :mousedown do |e|
    Draggable.unshift Draggable.delete(element.at_css('.title-bar'))
    Draggable.each_with_index do |elem, index|
      elem.parent.style.apply {
        z index: Draggable.length - index
      }
    end
  end

  # On click enter drag mode
  draggable_elem.on :mousedown do |e|
    next if $maximized.element
    Mouse.drag = draggable_elem
    Mouse.x = e.page.x - draggable_elem.parent.position.x
    Mouse.y = e.page.y - draggable_elem.parent.position.y
    draggable_elem.parent.style.apply {
      top (e.page.y.px - Mouse.y - $document.scroll.y).px
      left (e.page.x.px - Mouse.x - $document.scroll.x).px
      #position 'absolute'
      position 'fixed'
    }
    $document.css('.iframe_item').each do |iframe_disable|
      iframe_disable.style.apply {
        pointer events: 'none'
      }
    end
  end
end

def open_window(iframe_url, title = '')
  windows = $document.at_css('.window_handler')
  elem = Browser::DOM::Element.new(:div)
  elem.add_class 'window'
  windows << elem
  elem.inner_dom do
    div.draggable(class: 'title-bar') do
      div(class: 'title-bar-text') { 
        title.to_s
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
  add_window_functionality(elem)
  elem.style.apply {
    top (10..35).to_a.sample.px
    left (10..35).to_a.sample.px
  }
end

$document.ready do
  guide = $document.css('.guide')
  $document.css('.draggable').each do |draggable|
    Draggable.push draggable
  end
  windows = $document.css('.window')
  game_buttons = $document.css('.toggle_game').to_a
  game_element_cache = {}

  $document.on :mouseup do |e|
    Mouse.drag = false
    $document.css('.iframe_item').each do |iframe_enable|
      puts 'should apply to a window'
      iframe_enable.style.apply {
        pointer events: 'auto'
      }
    end
  end


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
      Draggable.unshift Draggable.delete(element.at_css('.title-bar'))
      Draggable.each_with_index do |elem, index|
        elem.parent.style.apply {
          z index: Draggable.length - index
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
  Draggable.each do |element|
    element.on :mousedown do |e|
      next if $maximized.element
      Mouse.drag = element
      Mouse.x = e.page.x - element.parent.position.x
      Mouse.y = e.page.y - element.parent.position.y
      element.parent.style.apply {
        top (e.page.y.px - Mouse.y - $document.scroll.y).px
        left (e.page.x.px - Mouse.x - $document.scroll.x).px
        #position 'absolute'
        position 'fixed'
      }
      $document.one :mouseup do |e|
        Mouse.drag = false
      end
    end
  end

  # when a window is in "drag" mode, move window to mouse cursor
  $document.on :mousemove do |e|
    if Mouse.drag
      Mouse.drag.parent.style.apply {
        top (e.page.y.px - Mouse.y - $document.scroll.y).px
        left (e.page.x.px - Mouse.x - $document.scroll.x).px
      }
    end
  end
  Draggable.each do |element|
    draggable_cached_position.push Rectangle.new(
      element.position.x + (-20..20).to_a.sample, #+ element.parent.position.x,
      element.position.y + 110 + 25 + (-20..20).to_a.sample, #+ element.parent.position.y,
      element.width - 15,
      element.height,
    )
  end
  Draggable.each_with_index do |element, index|
    element.parent.style.apply {
      top draggable_cached_position[index].y.px
      left draggable_cached_position[index].x.px
      position 'fixed'
      z index: Draggable.length - index
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
