def tag(tag_name, content, attributes = {})
  if attributes.empty?
    "<#{tag_name}>#{content}</#{tag_name}>"
  else
    flat_attrs = attributes.map do |key, value|
      "#{key}='#{value}'"
    end.join(' ')
    "<#{tag_name} #{flat_attrs}>#{content}</#{tag_name}>"
  end
end


p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", class: "bold")
# => <h1 class='bold'>Hello world</h1>
# => <h1 key=value>Hello world</h1>
# "key=value"


p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn")





#
