require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email_address => "email",
      :phone_number => "phone",
      :company_name => "company"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/email/)
    expect(rendered).to match(/phone/)
    expect(rendered).to match(/company/)
  end
end
