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
    #height 250.px
    #flex basis: 350.px
  end
  rule '.window-body' do
    min width: 220.px
    min height: 220.px
    font family: 'Meleo'
    #font size: 11.px
    font size: 16.px
  end
end
