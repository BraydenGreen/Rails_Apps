class Car < ActiveRecord::Base
  validates_presence_of :make
  has_many :parts
  def self.by_model
    order(:model)
  end

  def self.by_make
    order(:make)
  end

  def self.by_price(high = false)
    if high
      order('price DESC')
    else
      order(:price)
    end
  end

  def paint(color)
    if self.color == color
      "The car is already this color."
    else
      self.update(color: color)
      "Your car has been painted #{color}"
    end
  end

  def info
    car_info = {}
    car_info[:make] = self.make
    car_info[:model] = self.model
    car_info[:mileage] = self.mileage
    car_info[:color] = self.color
    car_info[:interior] = self.interior
    
  end

  def self.toyota?
    self.make == 'Toyota'
  end

  def honk
    if self.toyota?
      'beep beep'
    elsif self.make == 'Prius'
      'boop'
    else 
      'Honk!'
    end
  end

end
