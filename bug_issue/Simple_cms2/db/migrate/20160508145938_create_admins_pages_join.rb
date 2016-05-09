class CreateAdminsPagesJoin < ActiveRecord::Migration
  def change
    create_table :admins_pages_joins, :id => false do |t|
    	t.string "first_name", :limit => 25
        t.string "last_name", :limit => 25
    	t.integer "admin_id"
    	t.integer "page_id"
    end
    add_index :admins_pages_joins, ["admin_id", "page_id"]
  end
end
