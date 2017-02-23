require 'rails_helper'


describe "Login", type: :feature do
  before(:each) do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  it "Create and View food", :js => true do
    visit foods_path
    click_link("Add Food")
    fill_in 'Name', :with => 'Milk'
    click_on 'Create Food'
    expect(page).to have_content 'Milk'
  end
end
