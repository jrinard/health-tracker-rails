require 'rails_helper'


describe "Add food" do
  before() do
    user = FactoryGirl.create(:user)
    visit 'users/sign_up'
    login_as(user)
  end

  it "Create and View food", :js => true do
    visit root_path
    click_link("Add Food")
    fill_in 'Name', :with => 'Milk'
    click_on 'Create Food'
    expect(page).to have_content 'Milk'
  end
end
