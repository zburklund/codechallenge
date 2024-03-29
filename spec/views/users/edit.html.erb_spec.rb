require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email_address => "email",
      :phone_number => "phone",
      :company_name => "company"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[email_address]"

      assert_select "input[name=?]", "user[phone_number]"

      assert_select "input[name=?]", "user[company_name]"
    end
  end
end
