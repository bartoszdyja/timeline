require 'rails_helper'

feature 'Add comment' do
  let!(:test_user) { create :user, email: 'creator_email@example.com' }
  let!(:test_article) { create :article, user: test_user }

  scenario 'button is disabled when not logged in' do
    visit article_path(test_article)
    expect(page).to have_content 'Log in to add new comment'
  end

  scenario 'logged user can click link' do
    visit new_user_session_path
    fill_in 'Email', with: test_user.email
    fill_in 'Password', with: test_user.password
    click_button 'Log in'
    visit article_path(test_article)
    expect(page).to have_content 'Comment form'
  end
end
