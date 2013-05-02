class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :presenter
      t.text :description
      t.references :user
      
      t.timestamps
    end
  end
end
