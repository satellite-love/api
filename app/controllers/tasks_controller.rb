class TasksController < ApplicationController
  def create
    @satellite = Satellite.find_by name: params[:SatelliteName]
    @user = User.find_by(access_token: params[:access_token]).update(satellite_id: @satellite.id)
    @user.tasks.create(content: params[:task], start_time: Time.now, user_id: @user.id)
    end
  end
end
