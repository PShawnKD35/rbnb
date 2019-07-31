class Api::V1::AvailableServicesController < Api::V1::BaseController
  def create
    @available_service = AvailableService.new(available_service_params)
    @available_service.service = params[:service_id]
    if @available_service.save!
      render :show, status: :created
    else
      render text: "Eroorr"
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