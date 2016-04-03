class ZipCodesController < ApplicationController
  def index
    @zip_codes = ZipCode.limit(10)
    @zip_codes = @zip_codes.where("code LIKE ?", "#{params[:code]}%") if params[:code]
  end
end
