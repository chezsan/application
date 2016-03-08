class InternalusersController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]

  def index
    @internalusers = Internaluser.all
  end

  def show
    @internaluser = Internaluser.find_by(id: params[:id])
  end

  def new
    @internaluser = Internaluser.new
  end
  
  def create
    @internaluser = Internaluser.create(params[:internaluser])
    if @internaluser.valid?
      redirect_to internalusers_path, notice: "Yes!!!"
    else
      render "new"
    end
  end

  def edit
    @internaluser = Internaluser.find_by(id: params[:id])
  end

  def update
    @internaluser = Internaluser.find_by(id: params[:id])
    @internaluser.update(params[:internaluser])
    redirect_to internalusers_path
  end

  def destroy
    @internaluser = Internaluser.find_by(id: params[:id])
    @internaluser.destroy
    redirect_to internalusers_path
  end

end