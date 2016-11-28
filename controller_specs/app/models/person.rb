class Person < ActiveRecord::Base
  has_many :houses
  validates_presence_of :first_name
end
