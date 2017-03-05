class BiodataController < ApplicationController
  def index
    @portfolio_items = Biodatum.all
  end
end
