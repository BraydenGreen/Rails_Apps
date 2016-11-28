class Robot < ActiveRecord::Base
  belongs_to :inventor

  def by_industry
    render json: { robots: Robot.by_industry}
  end
  
end
