class Api::ShowsToSeeController < ApplicationController

  def create
    @shows_to_see = ShowsToSee.new(s2s_params)
    @shows_to_see.save
  end

  def destroy
    @shows_to_see = ShowsToSee.where(s2s_params)
    @shows_to_see.destroy!
  end

  private

  def s2s_params
    params.require(:shows_to_see).permit(:user_id, :show_id)
  end

end
