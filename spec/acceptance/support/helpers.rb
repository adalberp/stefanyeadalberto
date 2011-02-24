module HelperMethods

  [:notice, :alert].each do |name|
    define_method "should_have_#{name}" do |message|
      page.should have_css("##{name}", :text => message)
    end
  end

  def should_have_errors(*messages)
    within(:css, "#error_explanation") do
      messages.each { |msg| page.should have_content(msg) }
    end
  end
  alias_method :should_have_error, :should_have_errors

end

Rspec.configuration.include(HelperMethods)
