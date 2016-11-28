class Zoo < ActiveRecord::Base
  has_many :animals
  delegate :lions, :bears, :elephants, to: :animals

end
