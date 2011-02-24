require 'spec_helper'

describe "presents/new.html.erb" do
  before(:each) do
    assign(:present, stub_model(Present,
      :new_record? => true,
      :store => "MyString",
      :address => "MyText",
      :url => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders new present form" do
    render

    rendered.should have_selector("form", :action => presents_path, :method => "post") do |form|
      form.should have_selector("input#present_store", :name => "present[store]")
      form.should have_selector("textarea#present_address", :name => "present[address]")
      form.should have_selector("input#present_url", :name => "present[url]")
      form.should have_selector("input#present_contact", :name => "present[contact]")
    end
  end
end
