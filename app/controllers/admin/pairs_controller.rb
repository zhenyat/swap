class Admin::PairsController < Admin::BaseController
  before_action :set_pair, only: [:show, :edit, :update,:destroy]
  after_action  :remove_images, only: :update

  def index
    @pairs = policy_scope(Pair)
  end

  def show
    authorize @pair
  end

  def new
    @pair = Pair.new
    authorize @pair
  end

  def edit
    authorize @pair
  end

  def create
    @pair = Pair.new(pair_params)
    authorize @pair
    if @pair.save
      redirect_to admin_pair_path(@pair), notice: t('messages.created', model: @pair.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @pair
    if @pair.update(pair_params)
      redirect_to admin_pair_path(@pair), notice: t('messages.updated', model: @pair.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @pair
    @pair.destroy
    flash[:success] = t('messages.deleted', model: @pair.class.model_name.human)
    redirect_to admin_pairs_path
  end

  private

    # Uses callbacks to share common setup or constraints between actions
    def set_pair
      @pair = Pair.find(params[:id])
    end

    # Removes images, selected during Editing
    def remove_images
      @pair.cover_image.purge if pair_params[:remove_cover_image] == '1'
      image_to_remove_ids = params['image_to_remove_ids']
      if image_to_remove_ids.present?
        image_to_remove_ids.each do |image_to_remove_id|
          @pair.images.find(image_to_remove_id).purge
        end
      end
    end

    # Only allows a trusted parameter 'white list' through
    def pair_params
      params.require(:pair).permit(
        :base_id, :quote_id, :name, :code, :level, :decimal_places, :min_price, :max_price, :min_amount, :hidden, :fee, :status, :cover_image, :remove_cover_image, images: []
      )
    end
end
