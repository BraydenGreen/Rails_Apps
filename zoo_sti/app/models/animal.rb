class Animal < ActiveRecord::Base
  belongs_to :zoo 
  #type is default STI column, we are telling rails that we want to use race instead of type
  self.inheritance_column = :race 
  validates_presence_of :name
  def self.races
    %w(Lion Bear Elephant Monkey)
  end

  #scopes
  def self.lions
    where(race: 'Lion')
  end

  def self.bears
    where(race: 'Bear')
  end

  def self.elephants
    where(race: 'Elephant')
  end

  def self.lions
    where(race: 'Monkey')
  end


  def talk 
    raise 'You need to override this method in your sub classes' 
  end
end