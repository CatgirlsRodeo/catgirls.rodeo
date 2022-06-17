Justicar::PreProcessor.articles ||= {} # ensure the has exists

# assign the result to a hash to be generated later
# yr/mo/dy
title = "(Part 1) Racing Game - Planning Out The Project"
Justicar::PreProcessor.articles['2022/06/17'] = [
  title,#.tr(' ', '_'),
  Paggio.html! do
    article do
      markdown <<-MD
      # #{title}

      When starting out with a new game, a good idea is to plan it out and strip away everything untill you have the bare essentials of the game we want to make. To do that we need to make a list of systems and mechanics. Then we break up those systems and mechanics down to their smallest components.

      Ok so our lists starts with just 1 item:

      - Racing Game

      Obviously this is way to broad and we wont get anywhere following this. Lets get more detailed. What does our racing game need to be a racing game? Well for starters it needs cars that you can drive around in. But what use are cars on their own? They need somewhere to drive around in so we will also need race tracks.

      - Racing Game
        - Cars
        - Tracks

      - Racing Game
        - Cars
          - Collision
          - Acceleration/Decelleration
          - Steering
          - Ai
        - Tracks
          - Terrain(Road/Grass)
          - Checkpoints
          - Walls

      For the tech stack I am going to use:

      - Raylib - Rendering
      - Box2D - Physics
      - RmlUI - Rendering UI
 
      MD
    end
  end
]
