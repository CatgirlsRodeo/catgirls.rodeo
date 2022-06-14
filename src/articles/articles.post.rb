target ||= {}
target["raw"] ||= {}
Justicar::PreProcessor.articles.keys.sort.each do |date|
  article = Justicar::PreProcessor.articles[date]
  target["raw"]["#{article[0].tr(' ', '_')}.html"] = Paggio.html do
    head do
      link rel: "stylesheet", href: "https://unpkg.com/xp.css"
      link rel: "stylesheet", href: "/style.css"
      link rel: "stylesheet", href: "/fonts.css"
      link rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'
    end
    body(style: 'background:none') do
      article[1]
    end
  end
  target["#{article[0].tr(' ', '_')}.html"] = Paggio.html do
    head do
      link rel: "stylesheet", href: "https://unpkg.com/xp.css"
      link rel: "stylesheet", href: "/style.css"
      link rel: "stylesheet", href: "/fonts.css"
      link rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'
    end
    body do
      div do
        h1.title { 
          a.title(href: '/') { "Catgirls Rodeo"}
        }
      end
      img(src: '/rodeo_by_urasato.png').rodeo
      #iframe(src: "raw/#{article[0]}.html", allowtransparency: 'true', frameBorder: '0', style: 'width:100vw;height:80vh') {}
    div.center_article_links do
      div.article_links do
        div.link_background(style: 'color: white') { article[1] }
    end
    end
    end
  end
end
