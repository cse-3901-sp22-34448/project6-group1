class UserInfoController < ApplicationController
    def index 
        @user = user.all 
    end

    def show
    end

    def new 
        @user = user.new
    end

    def edit
    end

    def create 
        @user = user.new(user_params)

        respond_to do |format|
            if @user.save
                format.html{ redirect_to user_url(@user), notice: "User was successfully created." }
                format.json { render :show, status: :created, location: @user }
            else 
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to users_url(@user), notice: "PresentationInfo was successfully updated." }
                format.json { render :show, status: :ok, location: @user }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @user.destroy
        
        respond_to do |format|
            format.html { redirect_to users_url, notice: "PresentationInfo was successfully destroyed." }
            format.json { head :no_content }
        end
    end
    
    private 
        def set_user
            @user = user.find(params[:id])
        end

        def user_params
            params.require.(:user).permit(:login, :user_name, :user_email, :password)
        end

end
