class Admin::CoinNicknamesController < Admin::BaseController
  before_action :set_coin_nickname, only: [:show, :edit, :update,:destroy]

  def index
    @coin_nicknames = policy_scope(CoinNickname)
  end

  def show
    authorize @coin_nickname
  end

  def new
    @coin_nickname = CoinNickname.new
    authorize @coin_nickname
  end

  def edit
    authorize @coin_nickname
  end

  def create
    @coin_nickname = CoinNickname.new(coin_nickname_params)
    authorize @coin_nickname
    if @coin_nickname.save
      redirect_to admin_coin_nickname_path(@coin_nickname), notice: t('messages.created', model: @coin_nickname.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @coin_nickname
    if @coin_nickname.update(coin_nickname_params)
      redirect_to admin_coin_nickname_path(@coin_nickname), notice: t('messages.updated', model: @coin_nickname.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @coin_nickname
    @coin_nickname.destroy
    flash[:success] = t('messages.deleted', model: @coin_nickname.class.model_name.human)
    redirect_to admin_coin_nicknames_path
  end

  private

    # Uses callbacks to share common setup or constraints between actions
    def set_coin_nickname
      @coin_nickname = CoinNickname.find(params[:id])
    end

    # Only allows a trusted parameter 'white list' through
    def coin_nickname_params
      params.require(:coin_nickname).permit(
        :coin_id, :name, :status
      )
    end
end
