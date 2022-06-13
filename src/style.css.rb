Paggio.css do
  rule 'html' do
    margin 0
    #height 100.%
  end
  rule 'body' do
    margin 0
    background image: 'url("90s_arcade.png")'
    background repeat: 'repeat'
    height 100.%
  end
  rule '.title-bar-text' do
    font family: 'Meleo'
    #font size: 13.px
    font size: 16.px
    user select: 'none'
  end
  rule 'h1' do
    font family: 'MeleoItalic'
    font style: :italic
    color 'white'
    margin 25.px, 35.px
    text shadow: '3px 3px black'
    user select: 'none'
    box shadow: '0px 0px 5px 5px rgba(0,0,0,0.75)'
    background color: 'rgba(0,0,0,0.75)'
    float 'left'
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
    gap 30.px
    text align: 'center'
    padding top: 50.px
    max width: 500.px
  end
  rule '.link_background' do
    display 'inline'
    box shadow: '0px 0px 5px 5px rgba(0,0,0,0.75)'
    background color: 'rgba(0,0,0,0.75)'
  end
  rule '.center_article_links' do
    text align: 'center'
  end
  rule 'a h2' do
    font family: 'MeleoItalic'
    position 'relative'
    text decoration: 'underline'
    display 'inline'
    height 100.%
    z index: 1
    margin 0.px
  end
  rule 'a.article_link' do
    display 'inline'
    text shadow: '3px 3px black'
    padding 0.px, 10.px
  end
  rule 'a' do
    color 'white'
    text decoration: 'underline'
  end
  rule 'a:hover' do
    color '#dd5eac'
    text decoration: 'underline'
    cursor 'pointer'
  end
  rule 'a:visited' do
    color '#e9e9e9'
    text decoration: 'underline'
  end
  rule 'img.rodeo' do
    user select: 'none'
    position 'fixed'
    #margin top: -100.px
    left 50.px
    top 120.px
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
    display 'absolute'
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
    width 250.px
    height 250.px
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
end
