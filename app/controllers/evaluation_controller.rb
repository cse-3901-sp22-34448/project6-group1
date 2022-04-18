class EvaluationController < ApplicationController
    def index 
        @evaluation = evaluation.all 
    end

    def show
    end

    def new 
        @evaluation = evaluation.new
    end

    def edit
    end

    def create 
        @evaluation = evaluation.new(evaluation_params)

        respond_to do |format|
            if @evaluation.save
                format.html{ redirect_to evaluation_url(@evaluation), notice: "User was successfully created." }
                format.json { render :show, status: :created, location: @evaluation }
            else 
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @evaluation.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @evaluation.update(evaluation_params)
                format.html { redirect_to users_url(@evaluation), notice: "PresentationInfo was successfully updated." }
                format.json { render :show, status: :ok, location: @evaluation }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @evaluation.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @evaluation.destroy
        
        respond_to do |format|
            format.html { redirect_to evaluation_url, notice: "PresentationInfo was successfully destroyed." }
            format.json { head :no_content }
        end
    end
    
    private 
        def set_user
            @evaluation = evaluation.find(params[:id])
        end

        def evaluation_params
            evaluation.require.(:evaluation).permit(:user_email, :presentation_id, :scores, :comment)
        end

end

