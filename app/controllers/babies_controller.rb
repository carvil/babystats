class BabiesController < ApplicationController

  before_filter :authenticate_user!

  respond_to :html, :json

  attr_accessor :baby

  def index
    @babies = Baby.where(:user_id => current_user.id)
  end

  def new
    @baby = Baby.new
  end

  def show
    @baby = Baby.find(params[:id])
  end

  def edit
    @baby = Baby.find(params[:id])
  end

  def update
    @baby = Baby.find(params[:id])
    @baby.update_attributes(params[:baby])
    redirect_to babies_path
  end

  def destroy
    Baby.find(params[:id]).delete
    redirect_to babies_path
  end

  def create
    baby_params = params[:baby]
    dob = Date.new(baby_params["dob(1i)"].to_i, baby_params["dob(2i)"].to_i, baby_params["dob(3i)"].to_i)
    @baby = Baby.new(baby_params.merge(dob: dob))
    current_user.babies << baby
    if baby.valid?
      current_user.babies << baby
      flash.now[:success] = "#{baby.name} added successfully"
      redirect_to baby_path(baby)
    else
      flash.now[:error] = baby.errors.full_messages
      respond_with baby
    end
  end

end
