class CityDecorator < Draper::Decorator
  delegate_all

  def city_name
    name ? name : 'None Given'
  end

  def city_altitude
    altitude ? altitude : 'None Given'
  end

  def city_capitol
    capitol ? 'This is the capitol' : 'This is not the capitol'

  end

end
