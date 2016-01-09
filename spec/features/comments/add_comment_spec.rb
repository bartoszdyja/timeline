require 'rails_helper'

feature 'Add comment' do
  given!(:article) { FactoryGirl.create(:article) }
  given!(:user) { FactoryGirl.create(:user) }

  scenario 'button is disabled when not logged in' do
    visit article_path(article)
    expect(page).to have_content 'Log in to add new comment'
  end

  scenario 'user can click link' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    visit article_path(article)
    expect(page).to have_content 'Comment form'
  end
end
