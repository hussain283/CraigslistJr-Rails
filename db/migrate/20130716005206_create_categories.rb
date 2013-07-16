class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :category
      t.references :user
    end

  end

end
