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
            render :show
        else
            render json: @investment.errors.full_messages, status: 422
        end
    end

    def index
        investments = Investment.all
        render json: investments
  
    end

    def update
    end

    def show
        investment = Investment.find_by(id: params[:id])
        start_date = investment.created_at
        diff = (Time.zone.now - start_date).to_i / 1.year
        num_years = investment.num_years + diff
        new_total = Investment.calculate(investment.principal, num_years, investment.interest_rate)
        investment.new_total = new_total
            render json: investment
    end
    
# should this go in view or model?
  

    private
    def investments_params
        params.require(:investment).permit(:user_id, :company, :principal, :interest_rate, :num_years)
    end
end