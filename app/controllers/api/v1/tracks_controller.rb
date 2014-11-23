class Api::V1::TracksController < ApplicationController
  include ActionController::MimeResponds
 include ActionController::ImplicitRender
 respond_to :json
 before_filter :get_user

def index
  respond_with @user.tracks
end

private
def get_user
  @user=User.find(params[:user_id])
end
end
