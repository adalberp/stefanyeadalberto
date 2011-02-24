require 'spec_helper'

describe "presents/show.html.erb" do
  before(:each) do
    @present = assign(:present, stub_model(Present,
      :store => "Store",
      :address => "MyText",
      :url => "Url",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Store".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("Url".to_s)
    rendered.should contain("Contact".to_s)
  end
end
