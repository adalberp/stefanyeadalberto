require 'spec_helper'

describe "cerimonies/index.html.erb" do
  before(:each) do
    assign(:cerimonies, [
      stub_model(Cerimony,
        :local => "Local",
        :address => "MyText"
      ),
      stub_model(Cerimony,
        :local => "Local",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of cerimonies" do
    render
    rendered.should have_selector("tr>td", :content => "Local".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
