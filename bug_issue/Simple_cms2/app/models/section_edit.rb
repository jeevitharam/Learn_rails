class SectionEdit < ActiveRecord::Base
belongs_to :editor, :class_name =>"admin", :foreign_key => 'admin_id'
belongs_to :section

end
