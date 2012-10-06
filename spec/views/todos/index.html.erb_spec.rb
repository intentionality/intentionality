require 'spec_helper'

describe "todos/index" do
  before(:each) do
    assign(:todos, [
      stub_model(Todo,
        :name => "Name",
        :duration => "",
        :complete => false
      ),
      stub_model(Todo,
        :name => "Name",
        :duration => "",
        :complete => false
      )
    ])
  end

  it "renders a list of todos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
