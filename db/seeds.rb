User.create!(
  :full_name => "Site Admin",
  :email => "admin@mysite.com",
  :password => "123456",
  :password_confirmation => "123456"
)

PostCategory.create!(:name => "Nossa historia")

Post.create!(
  :title        => "Um amor pra recordar",
  :categories   => [PostCategory.first],
  :author       => User.first,
  :draft        => false,
  :published_at => Time.now,

  :excerpt => %{
Resumo breve.
  },

  :body    => %{
<p>Descricao completa.</p>
  }
)