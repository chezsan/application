class GroupsController < ApplicationController
  skip_before_action :authenticate, only: [:index, :show]
   
  def index
    @groups = Group.all
  end
  
  def show
    @group = Group.find_by(id: params[:id])
  end
  
  def new
    @group = Group.new
  end
  
  def create
    Group.create(params[:group])
    redirect_to groups_url
  end
  
  def edit
    @group = Group.find_by(id: params[:id])
  end
  
  def update
    @group = Group.find_by(id: params[:id])
    @group.update(params[:group])
    redirect_to groups_url
  end
  
  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
    redirect_to groups_url
  end
end