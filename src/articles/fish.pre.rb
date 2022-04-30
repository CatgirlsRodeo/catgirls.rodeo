Justicar::PreProcessor.articles ||= {} # ensure the has exists

# assign the result to a hash to be generated later
# yr/mo/dy
Justicar::PreProcessor.articles[220429] = Paggio.html! do
  h3 {
    "Article about making Justicar or something idk"
  }
  p {
    'yep some stuff or whatever'
  }
end
