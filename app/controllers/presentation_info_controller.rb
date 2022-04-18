class PresentationInfoController < ApplicationController
    def index 
        @presentation = Presentation.all 
    end

    def show
    end

    def new 
        @presentation = Presentation.new
    end

    def edit
    end

    def create 
        @presentation = Presentation.new(presention_params)

        respond_to do |format|
            if @presentation.save
                format.html{ redirect_to presentation_url(@presentation), notice: "Presentation was successfully created." }
                format.json { render :show, status: :created, location: @presentation }
            else 
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @presentation.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @presentation.update(presentation_params)
                format.html { redirect_to presentation_url(@presentation), notice: "Presentation was successfully updated." }
                format.json { render :show, status: :ok, location: @presentation }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @presentation.errors, status: :unprocessable_entity }
            end
        end
    end 

    def destroy
        @presentation.destroy
        
        respond_to do |format|
            format.html { redirect_to presentations_url, notice: "Presentation was successfully destroyed." }
            format.json { head :no_content }
        end
    end
    
    private 
        def set_presentation
            @presentation = Presentation.find(params[:id])
        end

        def presentation_params
            params.require.(:presentation).permit(:presentation_id, :class_id, :user_email)
        end

end
