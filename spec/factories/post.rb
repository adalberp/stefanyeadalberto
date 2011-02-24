Factory.define :post do |f|
  f.title "Awesome Post"
  f.association :author, :factory => :user
  f.draft false
  f.published_at Time.now

  f.excerpt %{
    High off Baltimore Pandemic and Yellow Tops,
    I believe we promised a release candidate shortly after RailsConf.
    As things usually go in open source, we gorged ourselves on fixes and improvements instead.
  }

  f.body %{
    <p>High off Baltimore Pandemic and Yellow Tops, I believe we promised a release candidate shortly after RailsConf.
    As things usually go in open source, we gorged ourselves on fixes and improvements instead.
    But all to your benefit. We’ve had "842 commits by 125 authors":http://github.com/rails/rails/compare/v3.0.0.beta4...master
    since the release of the last beta!</p>

    <p>Now it’s time to just say good is good enough, otherwise we could keep on with this forever.
    So please welcome the Rails 3 release candidate!
    You install, as always, with *gem install rails --pre*.</p>

    <p>Most of the fixes have been of minor significance, but we did manage to dramatically speed up Rails 3
    development and startup speed for larger applications
    (Basecamp went from insufferable to about 2.3 levels of enjoyment).</p>

    <p>Speed is now pretty good across the board except for part of Arel that Active Record now depends on.
    We’ll be making sure we get performance of Active Record back to at least 2.3 levels before release.</p>
  }

end