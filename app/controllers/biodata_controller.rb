class BiodataController < ApplicationController
  def index
    @portfolio_item = Biodatum.all
  end
  def angular
    @angular_portfolio_item = Biodatum.angular
  end
  def new
    @portfolio_item = Biodatum.new
  end
  def create
    @portfolio_item = Biodatum.new(params.require(:biodatum).permit(:title, :subtitle, :body))
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to biodata_path, notice: 'You portfolio item is now live' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
    @portfolio_item = Biodatum.find(params[:id])
  end
  def update
    @portfolio_item = Biodatum.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:biodatum).permit(:title, :subtitle, :body))
        format.html { redirect_to biodata_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def show
    @portfolio_item = Biodatum.find(params[:id])
  end
  def destroy
    @portfolio_item = Biodatum.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to biodata_url, notice: 'Record was successfully destroyed.' }
    end
  end
end
