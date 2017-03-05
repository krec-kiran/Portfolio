class BiodataController < ApplicationController
  def index
    @portfolio_item = Biodatum.all
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

end
