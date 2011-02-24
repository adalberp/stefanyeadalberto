module PostsHelper

  def gravatar_image_tag(email, html_options = {})
    email = Digest::MD5.hexdigest(email)
    image_tag "http://www.gravatar.com/avatar/#{email}?size=48", html_options
  end

  def comment_author(name, url="")
    name = "Anonymous Coward" unless name.present?
    url.present? ? link_to(name, url, :target => "_blank") : name
  end

end