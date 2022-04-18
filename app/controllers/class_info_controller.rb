class ClassInfoController < ApplicationController
    def index 
        @info = info.all 
    end

    def show
    end

    def new 
        @info = info.new
    end

    def edit
    end

    def create 
        @info = info.new(info)

        respond_to do |format|
            if @info.save
                format.html{ redirect_to info_url(@info), notice: "User was successfully created." }
                format.json { render :show, status: :created, location: @info }
            else 
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @info.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @info.update(info)
                format.html { redirect_to info_url(@info), notice: "PresentationInfo was successfully updated." }
                format.json { render :show, status: :ok, location: @info }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @info.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @info.destroy
        
        respond_to do |format|
            format.html { redirect_to info_url, notice: "PresentationInfo was successfully destroyed." }
            format.json { head :no_content }
        end
    end
    
    private 
        def set_user
            @info = info.find(params[:id])
        end

        def info_params
            info.require.(:info).permit(:class_id, :class_name)
        end

end


