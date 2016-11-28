require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'attributes' do

    it { should respond_to :make }
    it { should respond_to :model }
    it { should respond_to :mileage }
    it { should respond_to :color }
    it { should respond_to :interior }
    it { should validate_presence_of :make }

    end

    describe 'model methods' do
      it 'orders cars by model' do
        car1 = Car.create(make: 'Buick', model: 'Regal')
        car2 = Car.create(make: 'Chevy', model: 'Volt')
        car3 = Car.create(make: 'Audi', model: 'Yoyoma')
        cars = Car.by_model
        expect(cars[0]).to eq(car1)
        expect(cars[1]).to eq(car2)
        expect(cars[2]).to eq(car3)
      end
    end


    describe 'model makes' do
      it 'orders cars by make' do
        car1 = Car.create(make: 'Buick')
        car2 = Car.create(make: 'Chevy')
        car3 = Car.create(make: 'Audi')
        cars = Car.by_make
        expect(cars.count).to eq(3)
        expect(cars[0]).to eq(car3)
        expect(cars[1]).to eq(car1)
        expect(cars[2]).to eq(car2)
      
      end
    end

    describe 'model car prices' do
      it 'orders cars by price' do
        car1 = Car.create(make: 'Buick', price: 10000)
        car2 = Car.create(make: 'Chevy', price: 1200)
        car3 = Car.create(make: 'Audi', price: 24600)
        cars = Car.by_price
        expect(cars.count).to eq(3)
        expect(cars[0]).to be(car2)
        expect(cars[1]).to be(car1)
        expect(cars[2]).to be(car3)
      
      end
    end

end
