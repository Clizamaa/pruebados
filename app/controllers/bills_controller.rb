class BillsController < ApplicationController
 
  def index
    @bills = Bill.all()
  end

  # def read
  #  @bill = params[:url]
  #  @bill = Bill.where(url: @bill)
  # end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bills_new_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @bill = Bill.find(params[:id])
    @bill = Bill.where(id: @bill)
  end
  
  private
  def bill_params
    params.permit(:title, :price)
  end
end
  
