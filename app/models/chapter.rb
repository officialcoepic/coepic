class Chapter < ActiveRecord::Base
  attr_accessible :chapter, :chaptercontent
  belongs_to :book
end
