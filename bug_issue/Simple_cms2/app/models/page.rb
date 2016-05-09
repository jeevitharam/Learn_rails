class Page < ActiveRecord::Base
	belongs_to :subject, {:foreign_key => "subjct_id"}
    has_many :sections
    has_and_belongs_to_many :editors, :class_name => "admin"
end
