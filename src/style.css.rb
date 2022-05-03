Paggio.css do
  rule 'html' do
    margin 0
    height 100.%
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
    margin 15.px, 25.px
    text shadow: '3px 3px black'
    user select: 'none'
    position 'fixed'
  end
  rule 'img.rodeo' do
    user select: 'none'
    position 'fixed'
    margin top: 110.px
  end
  rule '.window_handler' do
    display 'flex'
    flex direction: 'row'
    flex wrap: 'wrap'
    justify content: 'space-evenly'
    align content: 'space-around'
    gap 20.px, 20.px
  end
  rule '.window' do
    #background color: 'red' #change to clear
    flex grow: 0
    display 'inline-block'
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
