class ApplicationController < ActionController::API
  before_action :set_status, :set_location

  private
  
  def set_status
    @status = :ok
  end

  def set_location
    @location = "#empty"
    if params[:city].present?
      @location = params[:city]
    elsif params[:lon].present? && params[:lat].present?
      @location = [params[:lon], params[:lat]]
    end
  end
end
