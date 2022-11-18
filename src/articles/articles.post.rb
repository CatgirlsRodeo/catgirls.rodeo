target ||= {}
target["raw"] ||= {}
Justicar::PreProcessor.articles.keys.sort.each do |date|
  article = Justicar::PreProcessor.articles[date]
  target["raw"]["#{article[0].tr(' ', '_').downcase}.html"] = Paggio.html do
    head do
      #link rel: "stylesheet", href: "https://unpkg.com/xp.css"
      link rel: "stylesheet", href: "/style.css"
      link rel: "stylesheet", href: "/fonts.css"
      link rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'
      link rel: 'stylesheet', href: '/prism.css'
    end
    body(style: 'background:none') do
      article[1] + "<script src=\"/prism.js\"></script>"
    end
  end
  target["#{article[0].tr(' ', '_').downcase}.html"] = Paggio.html do
    head do
      #link rel: "stylesheet", href: "https://unpkg.com/xp.css"
      link rel: "stylesheet", href: "/style.css"
      link rel: "stylesheet", href: "/fonts.css"
      link rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'
      link rel: 'stylesheet', href: '/prism.css'
    end
    body do
      div do
        div.fake_header do
        end
        header do
          h1.title { a.title(href: '/') { "Catgirls Rodeo"} }
          a.title.header_link(href: 'mailto:contact@tradam.dev') { 'contact@tradam.dev' }
          a.title.header_link(href: 'https://github.com/realtradam') { 'github' }
        end
      end
      img(src: '/catgirlsrodeologo.png', style: 'rotate:-10deg').rodeo
      div.left_background_bar.left_background_bar_shadow_two
      div.left_background_bar.left_background_bar_shadow
      div.right_background_bar.right_background_bar_shadow
      div.left_background_bar
      div.right_background_bar
      #iframe(src: "raw/#{article[0]}.html", allowtransparency: 'true', frameBorder: '0', style: 'width:100vw;height:80vh') {}
      div.center_article_links do
        div.article_links do
          div.link_background(style: 'color: white') { article[1] }
        end
      end
      script src: '/prism.js' do
      end
      script type: "text/javascript", src: "/script.js"
    end
  end
end
