class ProfilesController < ApplicationController
   before_filter :authorize

   def show
      @user = current_user

    end


    def edit
      @user = current_user

    end

    def update
      @user = current_user
      respond_to do |format|
        if @user.update(profile_params)
          format.html { redirect_to root_url, notice: 'User was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

     private
    
    def profile_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end


end