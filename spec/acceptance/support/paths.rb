module NavigationHelpers
  # Put here the helper methods related to the paths of your applications

  def homepage
    "/"
  end

  def contact_page
    "/contact/new"
  end

end

Rspec.configuration.include(NavigationHelpers)
