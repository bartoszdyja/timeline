require 'rails_helper'

feature 'Home page' do
  given!(:user) { FactoryGirl.create(:user) }

  before(:each) do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'user is successfully logged in' do
    expect(page).to have_content 'Signed in'
  end

  scenario 'user have add new article link' do
    expect(page).to have_content 'New article'
  end
end
