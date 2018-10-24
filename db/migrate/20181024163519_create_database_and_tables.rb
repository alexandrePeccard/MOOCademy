class CreateDatabaseAndTables < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.string "title", null: false
    	t.string "description", null: false

    	t.timestamps
    end

    create_table :lessons do |t|
    	t.string "title", null: false
    	t.string "body", null: false
    	
    	t.references :course, index: true

    	t.timestamps
    end
  end
end
