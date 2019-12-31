class TotalsController < ApplicationController
    def index
        @totals = Total.where(user_id: params[:user_id])
        render :index
    end


    def create
        @total = Total.new(params[:user_id], params[:investment_id], params[:company])
        @total = Total.where(params[:investment_id])

    end

    def update
        #replace current_total
    end

    def edit
    end

    private
    def total_params
        params.require(:total).permit(:user_id, :investment_id, :company)
    end

end