class VotesController < ApplicationController
  before_action :vote

  def show
    @upvotes = @vote.upvote
    @downvotes = @vote.downvote
  end

  def upvote
    @vote.update(upvote: @vote.upvote += 1)
    render json: {value: @vote.upvote}
  end

  def downvote
    @vote.update(downvote: @vote.downvote += 1)
    render json: {value: @vote.downvote}
  end

  private
    def vote
      @vote = Vote.first
    end
end
