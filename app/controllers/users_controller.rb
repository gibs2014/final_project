class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email = params[:email]
    @user.waist_size = params[:waist_size]
    @user.hip_size = params[:hip_size]
    @user.bra_size = params[:bra_size]
    @user.body_shape_id = params[:body_shape_id]

    if @user.save
      redirect_to users_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email = params[:email]
    @user.waist_size = params[:waist_size]
    @user.hip_size = params[:hip_size]
    @user.bra_size = params[:bra_size]
    @user.body_shape_id = params[:body_shape_id]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
