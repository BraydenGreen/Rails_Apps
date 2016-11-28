class ExampleController < ApplicationController
  def index
    @reversed = WordifyBraydenGreen.reversify("Can you read?")
    @cased = WordifyBraydenGreen.casify("I am having a problem with my volume")
    @spaced = WordifyBraydenGreen.spacify("hello", 4)
  end
end
