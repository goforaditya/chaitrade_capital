class TutorialsController < ApplicationController
  before_action :set_tutorial, only: :show

  def index
    @tutorials = Tutorial.all
  end

  def show
    progress = current_user.user_progresses.find_or_create_by(tutorial: @tutorial)
    progress.update(completed: true)
    current_user.gain_xp(20)
  end

  private

  def set_tutorial
    @tutorial = Tutorial.find_by!(slug: params[:id])
  end
end
