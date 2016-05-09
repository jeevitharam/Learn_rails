class Admin < ActiveRecord::Base
	has_and_belongs_to_many :pages
	has_many :section_edit
	
end
