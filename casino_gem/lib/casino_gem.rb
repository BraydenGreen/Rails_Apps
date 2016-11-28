require "casino_gem/version"

module CasinoGem
  
  def self.roll_die(num)
    rolled_dice = []
    num_dice.to_i = num
    roll_die = 1 + rand(6)
    num_dice.times do |i|
      rolled_dice << roll_die
    end


end
