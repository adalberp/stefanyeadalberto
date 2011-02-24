require 'spec_helper'

describe "presents/index.html.erb" do
  before(:each) do
    assign(:presents, [
      stub_model(Present,
        :store => "Store",
        :address => "MyText",
        :url => "Url",
        :contact => "Contact"
      ),
      stub_model(Present,
        :store => "Store",
        :address => "MyText",
        :url => "Url",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of presents" do
    render
    rendered.should have_selector("tr>td", :content => "Store".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Url".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Contact".to_s, :count => 2)
  end
end
