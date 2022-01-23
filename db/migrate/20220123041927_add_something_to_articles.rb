class AddSomethingToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :boolean_field, :boolean
  end
end
