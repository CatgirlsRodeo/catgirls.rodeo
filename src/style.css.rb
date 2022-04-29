Paggio.css do
  rule 'html' do
    margin 0
    height 100.%
  end
  rule 'body' do
    margin 0
    height 100.%
  end
  rule 'h1' do
    font style: :italic
    margin 0
  end
  rule '.window_handler' do
    display 'flex'
    flex direction: 'row'
    flex wrap: 'wrap'
    justify content: 'space-evenly'
    align content: 'space-around'
    gap 70.px, 30.px
    padding 0, 25.px
  end
  rule '.guide' do
    background color: 'red' #change to clear
    flex 1
    height 250.px
    flex basis: 350.px
  end
  rule '.window-body' do
    min width: 220.px
    min height: 220.px
  end
end
