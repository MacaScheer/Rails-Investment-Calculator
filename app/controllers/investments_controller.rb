class InvestmentsController < ApplicationController
require 'date'
#   def new 
#     @investment = Investment.new
#   end
    
    def create
        @investment = Investment.new(investments_params)
        @investment.save!
        if @investment
           
            total = Investment.calculate(investments_params[:principal], investments_params[:num_years], investments_params[:interest_rate])
            @investment[:total] = total
            # debugger
            # render json: @investment
            render :show
        else
            render json: @investment.errors.full_messages, status: 422
        end
    end

    def index
        @time_now = Date.now
        debugger
        # Investment.where(user_id: params[:user_id])
        render json: "index action in investments controller"
    end

    def update
    end

    def show
        @time_now = DateTime.now
         # start_date = @investment[:created_at]
            # today = DateTime.now
            # diff = ((today - start_date).to_i / 365).to_i
            # num_years = @investment[:num_years] + diff
            # debugger
        render json: params
    end
    
# should this go in view or model?
  

    private
    def investments_params
        params.require(:investment).permit(:user_id, :company, :principal, :interest_rate, :num_years)
    end
end