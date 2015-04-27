class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show, :edit, :update, :destroy]

  # GET /auctions
  # GET /auctions.json
  def index
    @auctions = Auction.all

    if (params[:category] or params[:result] or params[:customer_category] or params[:ffeature] or params[:sfeature])
      if !params[:category].empty?
        a = Auction.search(params[:category], "category")
      end


      if !params[:result].empty?
        b = Auction.search(params[:result], "result")
      end

      if !params[:customer_category].empty?
        c = Auction.search(params[:customer_category], "customer_category")
      end

      if !params[:ffeature].empty?
        d = Auction.search(params[:ffeature], "ffeature")
      end

      if !params[:sfeature].empty?
        e = Auction.search(params[:sfeature], "sfeature")
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

      if !e.nil?
        @auctions = e
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
    if !params[:auction][:ffeature].empty?
      params[:auction][:ffeature] = Feature.find_by_id(params[:auction][:ffeature]).title
    end
    if !params[:auction][:sfeature].empty?
      params[:auction][:sfeature] = Feature.find_by_id(params[:auction][:sfeature]).title
    end
    @auction = Auction.new(auction_params)

    respond_to do |format|
      if @auction.save
        format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
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
      params[:auction][:ffeature] = Feature.find_by_id(params[:auction][:ffeature]).title
    end
    if !params[:auction][:sfeature].empty?
      params[:auction][:sfeature] = Feature.find_by_id(params[:auction][:sfeature]).title
    end
    respond_to do |format|
      if @auction.update(auction_params)
        format.html { redirect_to @auction, notice: 'Auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction }
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
      format.html { redirect_to auctions_url, notice: 'Auction was successfully destroyed.' }
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
