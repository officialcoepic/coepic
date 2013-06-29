class Address < ActiveRecord::Base
  attr_accessible :city, :line1, :line2, :name, :state, :zip_code
  belongs_to :printer
  belongs_to :author
end
