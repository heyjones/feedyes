atom_feed do |feed|
  feed.title @feed.title
  feed.description @feed.description
  feed.updated @feed.items.last.created_at
  @feed.items.each do |post|
    feed.entry(post, url: nil) do |entry|
      entry.title post.title
      entry.description post.description
      entry.content post.content
      entry.url post.url
    end
  end
end
