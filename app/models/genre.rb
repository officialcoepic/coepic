class Genre < ActiveRecord::Base
  attr_accessible :name, :nooftag
  belongs_to :book
end
