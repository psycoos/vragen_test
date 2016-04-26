class CreateSavedResults < ActiveRecord::Migration
  def change
    create_table :saved_results do |t|
      t.text :results
      t.timestamps null: false
    end
  end
end
