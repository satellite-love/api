class TasksController < ApplicationController
  def create
    @satellite = Satellite.find_by name: params[:satellitename]
    @user = User.find_by(access_token: params[:access_token]).update(satellite_id: @satellite.id)
    params[:tasks].each do |task|
      @user.tasks.create(content: task, start_time: Time.now, user_id: @user.id)
    end
  end
end
