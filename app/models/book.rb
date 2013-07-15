class Book < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :chapter_attributes, :book_cover_image_attributes, :drafts_attributes, :reviews_attributes, :genres_attributes, :format_attributes, :pdf_download_attributes
  
  has_one :author
  has_one :book_cover_image
  has_one :pdf_download
  has_one :format
  has_one :printer
  has_many :chapters
  has_many :drafts
  has_many :genres
  has_many :reviews

  accepts_nested_attributes_for :chapters, :book_cover_image, :drafts, :reviews, :genres, :format, :pdf_download

end
