Paggio.css do
  rule 'html' do
    margin 0
    #height 100.%
  end
  rule 'body' do
    margin 0
    background image: 'url("90s_arcade.png")'
    background repeat: 'repeat'
    overflow y: 'scroll'
    height 100.%
  end
  rule '.title-bar-text' do
    font family: 'Meleo'
    font weight: 500
    #font size: 13.px
    font size: 16.px
    user select: 'none'
  end
  rule 'header' do
    display 'flex'
    flex direction: 'column'
    margin 25.px, 35.px
    text shadow: '3px 3px black'
    user select: 'none'
    box shadow: '0px 0px 5px 5px rgba(0,0,0,0.65)'
    background color: 'rgba(0,0,0,0.65)'
    float 'left'
  end
  rule 'h1' do
    margin top: 5.px
  end
  rule 'h1.title' do
    font family: 'MeleoItalic'
    font weight: 500
    #font style: :italic
    color 'white'
    margin 'auto'
  end
  rule '.header_link' do
    font family: 'Meleo'
    #font style: :italic
    font size: 2.em
    color 'white'
    margin 'auto'
    margin top: 5.px
    margin left: 50.px
    text shadow: '3px 3px black'
  end
  rule '.titlebar_contain' do
    height 100.px
    background 'inherit'
    position 'fixed'
    background color: 'white'
  end
  rule '.article_links' do
    display 'inline-flex'
    flex 0, 1, 'auto'
    flex direction: 'column'
    box shadow: '0px 0px 5px 5px rgba(0,0,0,0.95)'
    background color: 'rgba(0,0,0,0.95)'
    gap 30.px
    text align: 'center'
    margin top: 50.px
    max width: 550.px
    margin bottom: 25.px
  end
  rule '.link_background' do
    display 'inline'
    padding 10.px, 10.px
  end
  rule '.center_article_links' do
    text align: 'center'
    margin 0.px, 20.px
  end
  rule 'a h2' do
    font size: 2.7.em
    font family: 'Meleo'
    font weight: 500
    position 'relative'
    display 'inline'
    height 100.%
    margin 0.px
  end
  rule 'a.article_link' do
    display 'inline'
    text shadow: '3px 3px black'
    padding 0.px, 10.px
  end
  rule 'a' do
    color '#6dccec'
    text decoration: 'none'
  end
  rule 'a.title' do
    color 'white'
    text decoration: 'none'
    font family: 'MeleoItalic'
    font weight: 500
    #font style: :italic
  end
  rule 'a.article_link' do
    color 'white'
    text decoration: 'none'
  end
  rule 'a:hover' do
    color '#dd5eac'
    text decoration: 'underline'
    cursor 'pointer'
  end
  rule 'a.title:hover' do
    color '#dd5eac'
    text decoration: 'underline'
    cursor 'pointer'
  end
  rule 'a.article_link:hover' do
    color '#dd5eac'
    text decoration: 'underline'
    cursor 'pointer'
  end
  rule 'a:visited' do
    color '#324797'
    text decoration: 'none'
  end
  rule 'a.title:visited' do
    color 'white'
    text decoration: 'none'
  end
  rule 'a.article_link:visited' do
    color 'white'
    text decoration: 'none'
  end
  rule 'img.rodeo' do
    user select: 'none'
    position 'fixed'
    #margin top: -100.px
    left 50.px
    top 80.px
    z index: -1
  end
  rule '.window_handler' do
    display 'flex'
    flex direction: 'row'
    flex wrap: 'wrap'
    justify content: 'space-evenly'
    align content: 'space-around'
    gap 20.px, 20.px
  end
  rule '.title-bar' do
    cursor 'move'
  end
  rule '.window' do
    #background color: 'red' #change to clear
    flex grow: 0
    position 'fixed'
    #height 250.px
    #flex basis: 350.px
  end
  rule '.window-body' do
    min width: 220.px
    min height: 220.px
    font family: 'Meleo'
    #font size: 11.px
    font size: 16.px
    margin right: 4.px
    margin bottom: 2.px
    padding bottom: 10.px
    resize 'both'
    overflow 'auto'
    width 500.px
    height 600.px
  end
  rule '.iframe_container' do
    display 'flex'
    width 100.%
      height 100.%
      overflow 'hidden'
  end
  rule '.iframe_item' do
    flex grow: 1
    border 'none'
    margin 0
    padding 0
    width 100.%
      height 100.%
      flex direction: 'column'
  end
  rule '.game_container' do
    border radius: 0.5.rem
    box shadow: "1px 1px 10px 4px black"
    margin 25.px, 25.px, 15.px, 20.px
    overflow 'hidden'
    background color: 'black'
  end
  rule '.game_placeholder' do
    border radius: 0.5.rem
    box shadow: "1px 1px 10px 4px black"
    margin 25.px, 25.px, 15.px, 20.px
    overflow 'hidden'
    background color: 'black'
    color "lightblue"
    padding bottom: 4.px
  end
  rule '.toggle_game' do
    margin left: 30.px
  end
  rule 'article' do
    text align: 'left'
    padding 0.px, 10.px
  end
  rule 'article h1' do
    text aligh: 'center'
    font size: 3.em
  end
  rule 'article h2' do
    font size: 2.5.em
    text decoration: 'underline'
  end
  rule 'article h3' do
    font size: 2.em
    text decoration: 'underline'
  end
  rule 'article h4' do
    font size: 2.em
    text decoration: 'underline'
  end
  rule 'article p' do
    font size: 1.5.em
  end
end
