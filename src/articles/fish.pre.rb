Justicar::PreProcessor.articles ||= {} # ensure the has exists

# assign the result to a hash to be generated later
# yr/mo/dy
title = 'Article about making Justicar or something idk'
Justicar::PreProcessor.articles[220429] = [
  title.tr(' ', '_'),
  Paggio.html! do
    #head do
    #  link rel: "stylesheet", href: "https://unpkg.com/xp.css"
    #  link rel: "stylesheet", href: "/style.css"
    #  link rel: "stylesheet", href: "/fonts.css"
    #  link rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'
    #end
    #body(style: 'background:none') do
      div(class: 'window-body') do
        h3 title.to_s
        p {
          'yep some stuff or whatever'
        }
      end
    end
  #end
]
