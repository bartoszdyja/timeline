class AddAssociatedColumnsToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true, foreign_key: true
    add_reference :comments, :article, index: true, foreign_key: true
  end
end
