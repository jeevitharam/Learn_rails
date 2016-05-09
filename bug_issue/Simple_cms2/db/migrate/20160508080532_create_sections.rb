class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps null: false
      t.string "content_type"
      t.text "content"
    end
    add_index("sections", "page_id")

  end
end
