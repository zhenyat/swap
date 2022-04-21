class Admin::CoinsController < Admin::BaseController
  before_action :set_coin, only: [:show, :edit, :update,:destroy]
  after_action  :remove_images, only: :update

  def index
    @coins = policy_scope(Coin).order(:name)
  end

  def show
    authorize @coin
  end

  def new
    @coin = Coin.new
    authorize @coin
  end

  def edit
    authorize @coin
  end

  def create
    @coin = Coin.new(coin_params)
    authorize @coin
    if @coin.save
      redirect_to admin_coin_path(@coin), notice: t('messages.created', model: @coin.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @coin
    if @coin.update(coin_params)
      redirect_to admin_coin_path(@coin), notice: t('messages.updated', model: @coin.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @coin
    @coin.destroy
    flash[:success] = t('messages.deleted', model: @coin.class.model_name.human)
    redirect_to admin_coins_path
  end

  private

    # Uses callbacks to share common setup or constraints between actions
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Removes images, selected during Editing
    def remove_images
      @coin.cover_image.purge if coin_params[:remove_cover_image] == '1'
      image_to_remove_ids = params['image_to_remove_ids']
      if image_to_remove_ids.present?
        image_to_remove_ids.each do |image_to_remove_id|
          @coin.images.find(image_to_remove_id).purge
        end
      end
    end

    # Only allows a trusted parameter 'white list' through
    def coin_params
      params.require(:coin).permit(
        :name, :code, :kind, :unicode, :status, :cover_image, :remove_cover_image, images: []
      )
    end
end
