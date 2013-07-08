class Author < ActiveRecord::Base

  attr_accessible :about, :email, :goals, :name, :penname, :writeup
  has_one :author_image
  has_one :book
  has_one :social_link 
  has_one :payment
  has_one :address
 
  accepts_nested_attributes_for :address
  belongs_to :group
end
