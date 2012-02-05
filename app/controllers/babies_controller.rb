class BabiesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @babies = Baby.where(:user_id => current_user.id)
  end

  def show
    @baby = Baby.find(params["id"])
  end

  def edit
    @baby = Baby.find(params["id"])
  end

  def update
    @baby = Baby.find(params[:id])
    @baby.update_attributes(params[:baby])
    redirect_to babies_path
  end

  def destroy
    Baby.find(params["id"]).delete
    redirect_to babies_path
  end

  def create
    baby_params = params["baby"]
    dob = Date.new(baby_params["dob(1i)"].to_i, baby_params["dob(2i)"].to_i, baby_params["dob(3i)"].to_i)
    puts dob.inspect
    baby = Baby.new(name: baby_params["name"], gender: baby_params["gender"], dob: dob)
    puts baby.inspect
    current_user.babies << baby
    if current_user.save
      flash[:success] = "#{baby.name} added successfully"
      redirect_to baby_path(baby)
    else
      flash[:error] = "Unable to create baby"
      render :action => "new"
    end
  end
end
