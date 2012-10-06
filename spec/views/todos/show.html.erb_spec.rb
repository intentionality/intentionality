require 'spec_helper'

describe "todos/show" do
  before(:each) do
    @todo = assign(:todo, stub_model(Todo,
      :name => "Name",
      :duration => "",
      :complete => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
