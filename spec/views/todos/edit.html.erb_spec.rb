require 'spec_helper'

describe "todos/edit" do
  before(:each) do
    @todo = assign(:todo, stub_model(Todo,
      :name => "MyString",
      :duration => "",
      :complete => false
    ))
  end

  it "renders the edit todo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => todos_path(@todo), :method => "post" do
      assert_select "input#todo_name", :name => "todo[name]"
      assert_select "input#todo_duration", :name => "todo[duration]"
      assert_select "input#todo_complete", :name => "todo[complete]"
    end
  end
end
