class ZipCodesController < ApplicationController
  def index
    @zip_codes = ZipCode.limit(10)
    @zip_codes = @zip_codes.where("code LIKE ?", "%#{params[:code]}%").limit(10) if params[:code]
  end
end
