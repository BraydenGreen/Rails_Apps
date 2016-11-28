class House < ActiveRecord::Base
  belongs_to :person
  has_one :address
  validates_presence_of :bathroom


end
