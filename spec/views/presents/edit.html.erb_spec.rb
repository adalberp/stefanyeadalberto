require 'spec_helper'

describe "presents/edit.html.erb" do
  before(:each) do
    @present = assign(:present, stub_model(Present,
      :new_record? => false,
      :store => "MyString",
      :address => "MyText",
      :url => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders the edit present form" do
    render

    rendered.should have_selector("form", :action => present_path(@present), :method => "post") do |form|
      form.should have_selector("input#present_store", :name => "present[store]")
      form.should have_selector("textarea#present_address", :name => "present[address]")
      form.should have_selector("input#present_url", :name => "present[url]")
      form.should have_selector("input#present_contact", :name => "present[contact]")
    end
  end
end
