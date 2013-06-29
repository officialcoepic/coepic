class SocialLink < ActiveRecord::Base
  attr_accessible :facebook, :other, :twitter, :wordpress
  belongs_to :author
end
