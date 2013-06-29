class Printer < ActiveRecord::Base
  attr_accessible :name
  has_one :address
  belongs_to :book
end
