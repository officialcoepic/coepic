class Payment < ActiveRecord::Base
  attr_accessible :account, :bitcoin, :paypal
  belongs_to :author
end
