class ClassMemberController < ApplicationController
    def index 
        @member = member.all 
    end

    def show
    end

    def new 
        @member = member.new
    end

    def edit
    end

    def create 
        @member = member.new(member_params)

        respond_to do |format|
            if @member.save
                format.html{ redirect_to member_url(@member), notice: "User was successfully created." }
                format.json { render :show, status: :created, location: @member }
            else 
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @member.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @member.update(member)
                format.html { redirect_to member_url(@member), notice: "PresentationInfo was successfully updated." }
                format.json { render :show, status: :ok, location: @member }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @member.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @member.destroy
        
        respond_to do |format|
            format.html { redirect_to member_url, notice: "PresentationInfo was successfully destroyed." }
            format.json { head :no_content }
        end
    end
    
    private 
        def set_user
            @member = member.find(params[:id])
        end

        def member_params
            member.require.(:member).permit(:class_id, :user_email, :identity)
        end

end