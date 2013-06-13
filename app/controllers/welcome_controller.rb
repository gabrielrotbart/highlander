class WelcomeController < ApplicationController

  def index
    @users           = Queries::RunningLeaderboard.new.query.decorate
    @latest_bounties = latest_bounties(3)
  end

  private
  def latest_bounties(limit_no)
    Bounty.unclaimed.last(limit_no)
  end
end
