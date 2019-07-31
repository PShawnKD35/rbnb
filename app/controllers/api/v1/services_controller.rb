class Api::V1::ServicesController < Api::V1::BaseController
  before_action :set_service, only: %i[show update destroy]
  # skip before authentication is done
  skip_before_action :verify_authenticity_token

  def index
    # @services = policy_scope(Service)
    @services = Service.all
    render json: @services
  end

  def show
    # render json: @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = params[:user_id]
    if @service.save
      render json: @service
    else
      render json: { message: "shit, something wrong happened" }
    end
  end

  def update
  end

  def destroy
    if @service.destroy
      head :no_content
    else
      render json: { message: "shit, something wrong happened"}
    end
  end

  def search
    @items = Item.where("lower(name) LIKE ?", "%#{params[:item_name].downcase}%")
    @services = @items.map(&:service).uniq
    render json: @services
  end

  private

  def set_service
    @service = Service.find(params[:id])
    # authorize @service # For Pundit
  end

  def service_params
    params.require(:service).permit(:name, :charge, :address, :description)
  end
end
