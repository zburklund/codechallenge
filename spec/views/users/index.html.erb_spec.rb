require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "email",
        :phone_number => "phone",
        :company_name => "company"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "email",
        :phone_number => "phone",
        :company_name => "company"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "email".to_s, :count => 2
    assert_select "tr>td", :text => "phone".to_s, :count => 2
    assert_select "tr>td", :text => "company".to_s, :count => 2
  end
end
