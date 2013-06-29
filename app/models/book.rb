class Book < ActiveRecord::Base
  attr_accessible :cost, :description, :name
  
  has_one :author
  has_one :book_cover_image
  has_one :pdf_download
  has_one :format
  has_one :printer
  has_many :chapters
  has_many :drafts
  has_many :genres
  has_many :reviews
end
