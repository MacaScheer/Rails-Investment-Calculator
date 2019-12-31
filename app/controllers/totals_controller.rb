class TotalsController < ApplicationController
    def index
    end


    def create
    end

    def update
    end

    def edit
    end

    private
    def total_params
        params.require(:total).permit(:user_id, :investment_id, :company, :current_total)
    end

end