class FlatOwnersController < ApplicationController
  before_action :set_flat_owner, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_owner_property_user!
  # GET /flat_owners
  # GET /flat_owners.json
  def index
    @flat_owners = FlatOwner.all
  end

  # GET /flat_owners/1
  # GET /flat_owners/1.json
  def show
  end

  # GET /flat_owners/new
  def new
    @flat_owner = FlatOwner.new
  end

  # GET /flat_owners/1/edit
  def edit
  end

  # POST /flat_owners
  # POST /flat_owners.json
  def create
    @flat_owner = FlatOwner.new(flat_owner_params)

    respond_to do |format|
      if @flat_owner.save
        format.html { redirect_to @flat_owner, notice: 'Flat owner was successfully created.' }
        format.json { render :show, status: :created, location: @flat_owner }
      else
        format.html { render :new }
        format.json { render json: @flat_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat_owners/1
  # PATCH/PUT /flat_owners/1.json
  def update
    respond_to do |format|
      if @flat_owner.update(flat_owner_params)
        format.html { redirect_to @flat_owner, notice: 'Flat owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_owner }
      else
        format.html { render :edit }
        format.json { render json: @flat_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat_owners/1
  # DELETE /flat_owners/1.json
  def destroy
    @flat_owner.destroy
    respond_to do |format|
      format.html { redirect_to flat_owners_url, notice: 'Flat owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_owner
      @flat_owner = FlatOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_owner_params
      params.require(:flat_owner).permit(:Buldingname, :address, :region, :country, :rooms_number, :beds_number, :baths_number)
    end
end
