class PostsController < ApplicationController
  before_action :authenticate_member!, except: %i[index show]
end
