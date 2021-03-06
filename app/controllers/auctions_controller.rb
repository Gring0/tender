require 'will_paginate/array' 
class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show, :edit, :update, :destroy]

  # GET /auctions
  # GET /auctions.json
  def index
    @auctions = Auction.paginate(page: params[:page])

    if (params[:category] or params[:result] or params[:customer_category] or params[:ffeature] or params[:sfeature])
      if !params[:category].empty?
        a = Auction.search(params[:category], "category", params[:page])
      end


      if !params[:result].empty?
        b = Auction.search(params[:result], "result", params[:page])
      end

      if !params[:customer_category].empty?
        c = Auction.search(params[:customer_category], "customer_category", params[:page])
      end

      if !params[:ffeature].empty?
        d = Auction.like_search(params[:ffeature], "ffeature", params[:page])
      end

      if !a.nil?
        @auctions = a
      end

      if !b.nil?
        @auctions = b
      end

      if !c.nil?
        @auctions = c
      end

      if !d.nil?
        @auctions = d
      end

    end
    @auctions
      respond_to do |format|
      format.html
      format.csv { send_data @auctions.to_csv }
      format.xls { send_data @auctions.to_csv(col_sep: "\t") }
    end
  end

  # GET /auctions/1
  # GET /auctions/1.json
  def show
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions
  # POST /auctions.json
  def create
    @auction = Auction.new(auction_params)

    respond_to do |format|
      if @auction.save
        format.html { redirect_to @auction, notice: 'Запись успешно создана.' }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auctions/1
  # PATCH/PUT /auctions/1.json
  def update
    if !params[:auction][:ffeature].empty?
      a=""
      params["auction"]["ffeature"].shift
      params["auction"]["ffeature"].each do |f|
        a=a + Feature.find_by_id(f).title + " || "
      end
      a=a[0..a.length-5]
      params[:auction][:ffeature] = a
    end
    respond_to do |format|
      if @auction.update(auction_params)
        format.html { redirect_to auctions_url, notice: 'Запись успешно обновлена.' }
        #format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auctions/1
  # DELETE /auctions/1.json
  def destroy
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auctions_url, notice: 'Запись удалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction = Auction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_params
      params.require(:auction).permit(:customer, :subject, :ffeature, :sfeature, :category)
    end
end
