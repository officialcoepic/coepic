class Author < ActiveRecord::Base

  attr_accessible :about, :email, :goals, :name, :penname, :writeup, :address_attributes
  has_one :author_image
  has_one :book
  has_one :social_link 
  has_one :payment
  has_one :address
 
  accepts_nested_attributes_for :address, :social_link, :payment
  belongs_to :group
end
