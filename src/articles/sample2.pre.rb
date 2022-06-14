Justicar::PreProcessor.articles ||= {} # ensure the has exists

# assign the result to a hash to be generated later
# yr/mo/dy
title = 'This is a Second Sample Article that is about Something'
Justicar::PreProcessor.articles['2022/04/29 2'] = [
  title,#.tr(' ', '_'),
  Paggio.html! do
    article do
    markdown <<-MD
    # #{title}
    
    ## sub title

    ### sub sub title

    Voluptates quia ad numquam aperiam laboriosam nisi ullam. Non aperiam cumque quo maxime iusto eligendi aliquam qui. Soluta et molestiae eos voluptatem recusandae.

    Dignissimos magni quisquam architecto. Earum tempore corrupti recusandae dolorum aut ut distinctio. Consequuntur nobis dignissimos necessitatibus ullam omnis quia impedit. Pariatur dolorem enim ipsam voluptate.

    Ut labore incidunt omnis non. Voluptatibus similique quia itaque eaque qui eius. Id aspernatur qui soluta quod voluptatem fugiat.

    Occaecati et non error exercitationem deserunt quis laborum officiis. Earum sapiente est saepe et velit quasi omnis. Velit id qui tempora ut pariatur aut in.

    Neque reiciendis et quae quas minus. Quia et asperiores aut. Quibusdam veritatis dolorem impedit corrupti nihil perspiciatis reprehenderit dolorem. Ipsa dolores tenetur minus ullam. Blanditiis eaque error odit facilis sint incidunt ut explicabo.

    MD
    end
  end
]
