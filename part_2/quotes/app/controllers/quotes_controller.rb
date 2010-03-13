class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
    @quote = @quotes[rand(@quotes.size)]

    # @quote = Quote.find(:first, :order => "id desc")
  end

  def new
    @quote = Quote.new
  end
  
  def create
    Quote.create!(params[:quote])
    redirect_to quotes_path
  end
end
