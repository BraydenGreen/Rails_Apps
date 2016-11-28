class Dealership < ActiveRecord::Base
 has_many :buyers
 has_many :cars
 has_many :salesmen
 has_many :wholesalers

end
