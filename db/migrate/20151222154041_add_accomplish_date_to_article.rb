class AddAccomplishDateToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :completed_on, :date
  end
end
