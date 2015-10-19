require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :title => "",
      :message => "MyText",
      :product_id => 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_title[name=?]", "comment[title]"

      assert_select "textarea#comment_message[name=?]", "comment[message]"

      assert_select "input#comment_product_id[name=?]", "comment[product_id]"
    end
  end
end
