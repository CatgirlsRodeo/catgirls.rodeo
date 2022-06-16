Justicar::PreProcessor.articles ||= {} # ensure the has exists

# assign the result to a hash to be generated later
# yr/mo/dy
title = 'The Making of the Beginning(of My Website)'
Justicar::PreProcessor.articles['2022/06/16'] = [
  title,#.tr(' ', '_'),
  Paggio.html! do
    article do
      markdown <<-MD
    # #{title}
 
    Finally after months of procrastination and slow work this website is at a state I can be happy with to deploy.
    All I really wanted or needed was a website where I could write down my thoughts and progress in a blog post style format as well as some fancy custom styling.
    There are plenty of frameworks or static site generators that exist which could do any of that.
    Plenty even in Ruby, my language of choice. Rails, Jenkins, many more I\\\'ve seen and not seen but ultimately I decided to go with none of them.

    It\\\'s like the difference between putting together an Ikea table vs measuring, cutting, and making it yourself.
    Sure you picked out the Ikea table but it doesnt compare to the feeling of using something you built.
    Websites are a personal thing, it\\\'s your very own real estate on the internet.
    Its your mark on the web so why do something that is bog-standard boring. All these framworks and social media sites seem to have just depressingly sapped away that creativity.

    When the project is the measuring and cutting kind then it becomes more personal.
    Or at least that\\\'s the idea: you can make something you are proud of so that you keep working on it and making it better.
    If I just spun up a Wordpress site I wouldn\\\'t be motivated to actually write any blog posts for it.
    But when I can write the blogs in my unique way on my unique setup then it feels like something special.
    Keeps me invested.

    I guess ultimately thats why so many of my projects are the way they are.
    They may take ages and would certainly be \\\"easier\\\" if I just used some existing monolith but I know my interest would wane.
    This way I get to stay motivated.
    And I need to stay motivated if I want to regularly keep writing blogs, so that I could document what I\\\'ve been working and my experiences and then one day in the future I could look back on where I\\\'ve come from.
    That and also it is good practice for writing. I hope to keep this blog up and running for a long time :)
      MD
    end
  end
]
