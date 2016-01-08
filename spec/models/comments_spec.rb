require 'rails_helper'

describe Comment do
  describe 'validations' do
    it { is_expected.to validate_presence_of :content }
  end

  describe 'db columns' do
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :user_id }
    it { is_expected.to have_db_column :article_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :article }
  end
end
