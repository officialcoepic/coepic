class AuthorImage < ActiveRecord::Base
  attr_accessible :imageurl
  belongs_to :author
end
