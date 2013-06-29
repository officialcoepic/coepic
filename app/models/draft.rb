class Draft < ActiveRecord::Base
  attr_accessible :content, :ithupload, :timeofthedraft
  belongs_to :book
end
