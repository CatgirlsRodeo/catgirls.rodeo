target["index.html"] = Paggio.html do
  head do
    link rel: "stylesheet", href: "https://unpkg.com/xp.css"
    link rel: "stylesheet", href: "style.css"
    link rel: "stylesheet", href: "fonts.css"
    link rel: 'icon', type: 'image/x-icon', href: 'favicon.ico'
  end
  body do
    #img.justicar(src: '/justicar.png', alt: 'Justicar', height: '400px')
    #h1 { "Hello world from Justicar" }
    header do
      h1.title { a.title(href: '/') { "Catgirls Rodeo"} }
      a.title.header_link(href: 'mailto:contact@tradam.dev') { 'contact@tradam.dev' }
      a.title.header_link(href: 'https://github.com/realtradam') { 'github' }
    end

    div.center_article_links do
      div.article_links do
        Justicar::PreProcessor.articles.keys.sort.each do |date|
          article = Justicar::PreProcessor.articles[date]
          div.link_background do
            a.article_link(href: "/articles/#{article[0].tr(' ', '_')}.html", onclick: "Opal.eval(\"open_window(\\\"/articles/raw/#{article[0].tr(' ', '_')}.html\\\", \\\"#{date.to_s}\\\")\");return false;") do
            #a.article_link(onclick: "Opal.eval(\"open_window(\\\"/articles/raw/#{article[0].tr(' ', '_')}.html\\\")\");return false;") do
              h2 do
                article[0]
              end
            end
          end
        end
      end
    end
    img(src: 'rodeo_by_urasato.png').rodeo
    div.window_handler do
      #25.times do
      #  div.guide(style: "flex-basis: #{(220..350).to_a.sample}px") { 'red' }
      #end
      #end
      #keys = Justicar::PreProcessor.articles.keys.sort
      #keys.reverse_each do |key|
      #  #25.times do
      #  div.window do
      #    div.draggable(class: 'title-bar') do
      #      div(class: 'title-bar-text') { 
      #        key.to_s
      #      }
      #      div(class: 'title-bar-controls') do
      #        #button("aria-label": "Minimize")
      #        button("aria-label": "Maximize").maximize
      #        button("aria-label": "Close").close
      #      end
      #    end
      #    div(class: "window-body", style: "width: #{(250..450).to_a.sample}px") { 
      #      Justicar::PreProcessor.articles[key]
      #    }
      #  end
      #end
=begin
h2.paggio do
    'Hello world from Paggi!'
  end
  p.paggio do
    "This part was generated by Paggio in HTML :)"
  end
=end
    end
  end
  script type: "text/javascript", src: "script.js"
end
