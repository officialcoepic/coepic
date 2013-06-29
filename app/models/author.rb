class Author < ActiveRecord::Base
  attr_accessible :about, :email, :goals, :name, :penname, :writeup, :password
  has_one :sociallink
  has_one :address
  has_one :author_image
  has_one :payment

  belongs_to :group
end
