class InvestmentsController < ApplicationController

  def new 
    @investment = Investment.new
  end
    
    def create
        render json: params
        # @investment = Investment.new(investment_params)
        # if @investment
        #     render :show
        # else
        #     render json: @investment.errors.full_messages, status: 422
        # end
    end

    def index
        # Investment.where(user_id: params[:user_id])
        render json: "index action in investments controller"
    end

    def update
    end

    def show
        render json: params
    end
    

    def calculate
        @total = params[:principal] * (1 + (params[:rate] * params[:num_years]))
    end

    private
    def investments_params
        params.require(:investment).permit(:num_years, :company_name, :principal, :rate, :user_id)
    end
end