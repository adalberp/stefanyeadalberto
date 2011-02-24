atom_feed do |feed|
  feed.title    "Feed"
  feed.updated  @posts.last.try(:updated_at)
 
  @posts.each do |post|
    feed.entry post do |entry|

      entry.title    post.title
      entry.content  textilize(post.body), :type => 'html'
      entry.updated  post.updated_at

      entry.author do |author|
        author.name post.author_full_name
      end

    end
  end
end