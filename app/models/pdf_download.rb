class PdfDownload < ActiveRecord::Base
  attr_accessible :noofclick

  belongs_to :book
end
