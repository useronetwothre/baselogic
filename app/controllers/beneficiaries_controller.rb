class BeneficiariesController < ApplicationController
  before_action :set_beneficiary, only: [:show, :update, :destroy]

  # GET /beneficiaries
  def index
    @beneficiaries = Beneficiary.all

    render json: @beneficiaries
  end

  # GET /beneficiaries/1
  def show
    render json: @beneficiary
  end

  # POST /beneficiaries
  def create
    @beneficiary = Beneficiary.new(beneficiary_params)

    if @beneficiary.save
      render json: @beneficiary, status: :created, location: @beneficiary
    else
      render json: @beneficiary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beneficiaries/1
  def update
    if @beneficiary.update(beneficiary_params)
      render json: @beneficiary
    else
      render json: @beneficiary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beneficiaries/1
  def destroy
    @beneficiary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiary
      @beneficiary = Beneficiary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beneficiary_params
      params.require(:beneficiary).permit(:rid, :uid, :full_name, :address, :country, :currency, :account_number, :account_type, :bank_name, :bank_address, :bank_country, :bank_swift_code, :intermediary_bank_name, :intermediary_bank_address, :intermediary_bank_country, :intermediary_bank_swift_code, :status)
    end
end