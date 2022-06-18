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

      That still isn\\\'t specific enough though, we can get more atomic then this. What kind of systems do the cars require? At it\\\'s most basic there are 3 unique systems: Acceleration/Deceleration, Steering, and Collision.

       - Cars
         - Collision
         - Acceleration/Deceleration
         - Steering

      For the race tracks we can identify 3 different systems which will critically interact with our cars: the terrain(such as tarmac or grass) which will affect the control over the car, checkpoints which will determine how far along a race a car is or if it has completed the race, and finally obsticles which could include things such as the boundaries of the race track.

        - Tracks
          - Terrain(Road/Grass)
          - Checkpoints
          - Walls

      Finally to create a challenge in our game beyond that of just time trials we will want to add in an AI system which will let us race agaisnt other cars. This system will depend on all previous systems and so it will be implemented last.

      - Ai

      And so we now have our complete list of systems sufficiently specific so that we could work on them one at a time without getting overwhelmed and so that we can code with some foresight of what we will require in the future.

      - Racing Game
        - Cars
          - Collision
          - Acceleration/Deceleration
          - Steering
        - Tracks
          - Terrain(Road/Grass)
          - Checkpoints
          - Walls
        - Ai

      Now with our game planned out we can start putting the project together. I am going to use C++ as I would like to get some practice in with this language. There are a few libraries I will utilize to help with this project. For rendering we will use Raylib as I adore the simplicity it models. For physics I will use Box2D as it is very robust. Finally for the UI I would like to try using RmlUI as I havent used it before and it looks like exactly what I would like from a UI library for my games.

      - Raylib - Rendering
      - Box2D - Physics
      - RmlUI - Rendering UI

      If you are just starting out with programming and/or game development I would not reccomend planning and using such a number of complex libraries and features and to instead start with something simpler. Try to make a game with just raylib, and a simpler style of game like pong or space invaders.
 
      MD
    end
  end
]
