require 'rails_helper'

let(:city_name) {'Denver'}
let(:city_altitude) {'4500'}

let(:city) {FactoryGirl.build(:city, name: city_name, altitude: city_altitude)}

let(:decorator) { city.decorate }


describe CityDecorator do
  describe '.city_name' do
    context 'with name' do
      it 'should give the city name back' do
        expect(decorator.city_name).to eq(city_name)
      end
    end

    context 'without name' do
      before do
        city.name = nil
    end

    it 'should give back None Given' do

  


  describe '.city_altitude' do
    context 'with altitude' do
      it 'should give back altitude' do
        
      end
    end


    context 'without altitude' do
    end
  end
  

end
