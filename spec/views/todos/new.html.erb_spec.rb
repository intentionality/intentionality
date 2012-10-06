require 'spec_helper'

describe "todos/new" do
  before(:each) do
    assign(:todo, stub_model(Todo,
      :name => "MyString",
      :duration => "",
      :complete => false
    ).as_new_record)
  end

  it "renders new todo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => todos_path, :method => "post" do
      assert_select "input#todo_name", :name => "todo[name]"
      assert_select "input#todo_duration", :name => "todo[duration]"
      assert_select "input#todo_complete", :name => "todo[complete]"
    end
  end
end
