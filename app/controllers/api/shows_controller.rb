class Api::ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

end
