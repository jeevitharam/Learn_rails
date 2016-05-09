class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

    	 t.string "first_name", :limit => 25
         t.string "last_name", :limit => 25
         t.integer "admin_id"
    	 t.integer "page_id"
    end
    add_index :admins, ["admin_id", "page_id"]
  end
end
