class BookCoverImage < ActiveRecord::Base
  attr_accessible :bookurl
  belongs_to :book
end
