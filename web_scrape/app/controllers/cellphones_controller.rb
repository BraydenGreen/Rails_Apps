class CellphonesController < ApplicationController
  def index
    @cellphones = Cellphone.all
  end

  def show
  end
end
