GameUrl = Proc.new do |game_url, aspect_ratio, content|
  Paggio.html! do |_|
    _.div.game_container {
      _.iframe.game_frame(frameborder: 0, src: game_url, width: '100%', allowfullscreen: "", style: "aspect-ratio: #{aspect_ratio}") { content }
    }
  _.div(style: "aspect-ratio: #{aspect_ratio}").game_placeholder { "Click below to start :)" }
  _.button.toggle_game { "Load Game" }
  end
end
