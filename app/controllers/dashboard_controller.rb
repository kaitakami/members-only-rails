class DashboardController < ApplicationController
  before_action :authenticate_member!
  def profile
    @posts = Post.where(member_id: current_member.id).order("created_at DESC")
  end
end
