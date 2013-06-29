class Format < ActiveRecord::Base
  attr_accessible :epub, :kindle, :pdf
  belongs_to :book
end
