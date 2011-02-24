require 'spec_helper'

describe "cerimonies/new.html.erb" do
  before(:each) do
    assign(:cerimony, stub_model(Cerimony,
      :new_record? => true,
      :local => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new cerimony form" do
    render

    rendered.should have_selector("form", :action => cerimonies_path, :method => "post") do |form|
      form.should have_selector("input#cerimony_local", :name => "cerimony[local]")
      form.should have_selector("textarea#cerimony_address", :name => "cerimony[address]")
    end
  end
end
