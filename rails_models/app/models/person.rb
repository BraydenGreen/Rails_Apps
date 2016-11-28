class Person < ActiveRecord::Base
  has_many :shirts, dependent: :destroy
  has_one :address

  validates :name, :race, presence: :true
  before_validation :check_name

  def self.by_first_name
    order(:name)
  end

  def self.by_age
    order age: :desc
  end

  def get_info
    "#{self.name}" is '#{self.age} old. '

  private
    def check_name
      unless self.name
        self.name = 'Default Name'
      end
    end

end
