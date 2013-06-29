class Review < ActiveRecord::Base
  attr_accessible :content, :timeofthereview
  belongs_to :book
end
