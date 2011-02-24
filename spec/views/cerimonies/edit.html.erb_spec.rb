require 'spec_helper'

describe "cerimonies/edit.html.erb" do
  before(:each) do
    @cerimony = assign(:cerimony, stub_model(Cerimony,
      :new_record? => false,
      :local => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit cerimony form" do
    render

    rendered.should have_selector("form", :action => cerimony_path(@cerimony), :method => "post") do |form|
      form.should have_selector("input#cerimony_local", :name => "cerimony[local]")
      form.should have_selector("textarea#cerimony_address", :name => "cerimony[address]")
    end
  end
end
