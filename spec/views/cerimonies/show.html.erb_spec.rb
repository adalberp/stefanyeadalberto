require 'spec_helper'

describe "cerimonies/show.html.erb" do
  before(:each) do
    @cerimony = assign(:cerimony, stub_model(Cerimony,
      :local => "Local",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Local".to_s)
    rendered.should contain("MyText".to_s)
  end
end
