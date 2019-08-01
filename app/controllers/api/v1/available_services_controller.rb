class Api::V1::AvailableServicesController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token
  
  def create
    @available_service = AvailableService.new(available_service_params)
    @available_service.service_id = params[:service_id]
    @service = @available_service.service
    if @available_service.save!
      render "api/v1/services/show", status: :created
    else
      render json: { message: "Shit, something wrong happened" }
    end
  end
  
  def destroy
    set_available_service
    @available_service.destory
  end

  private
  
  def set_available_service
    @available_service = AvailableService.find(params[:id])
  end

  def available_service_params
    params.require(:available_service).permit(:start_time, :end_time)
  end
end