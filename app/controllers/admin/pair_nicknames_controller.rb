class Admin::PairNicknamesController < Admin::BaseController
  before_action :set_pair_nickname, only: [:show, :edit, :update,:destroy]

  def index
    @pair_nicknames = policy_scope(PairNickname)
  end

  def show
    authorize @pair_nickname
  end

  def new
    @pair_nickname = PairNickname.new
    authorize @pair_nickname
  end

  def edit
    authorize @pair_nickname
  end

  def create
    @pair_nickname = PairNickname.new(pair_nickname_params)
    authorize @pair_nickname
    if @pair_nickname.save
      redirect_to admin_pair_nickname_path(@pair_nickname), notice: t('messages.created', model: @pair_nickname.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @pair_nickname
    if @pair_nickname.update(pair_nickname_params)
      redirect_to admin_pair_nickname_path(@pair_nickname), notice: t('messages.updated', model: @pair_nickname.class.model_name.human)
    else      
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @pair_nickname
    @pair_nickname.destroy
    flash[:success] = t('messages.deleted', model: @pair_nickname.class.model_name.human)
    redirect_to admin_pair_nicknames_path
  end

  private

    # Uses callbacks to share common setup or constraints between actions
    def set_pair_nickname
      @pair_nickname = PairNickname.find(params[:id])
    end

    # Only allows a trusted parameter 'white list' through
    def pair_nickname_params
      params.require(:pair_nickname).permit(
        :pair_id, :name, :status
      )
    end
end
