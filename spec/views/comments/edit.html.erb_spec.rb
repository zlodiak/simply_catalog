require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :title => "",
      :message => "MyText",
      :product_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_title[name=?]", "comment[title]"

      assert_select "textarea#comment_message[name=?]", "comment[message]"

      assert_select "input#comment_product_id[name=?]", "comment[product_id]"
    end
  end
end
