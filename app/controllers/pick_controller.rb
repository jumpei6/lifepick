class PickController < ApplicationController
  def index
  end

  def edit
  end

  def show
    # user_id = current_user.id
    # @items = Item.where(id: UserItem.where(user_id: user_id).map(&:item_id))
  end

  def create
    # ids = items_params.values.map(&:to_i)
    # user_id = current_user.id
    # begin
    #   ApplicationRecord.transaction do
    #     ids.each do |id|
    #       UserItem.save!(item_id: id, user_id: user_id)
    #     end
    #   end
    #   redirect_to :show
    # rescue
    #   # エラー処理
    # end
  end

  # def update
  #   UserItem.where(user_id: user_id).delete_all
  #   ids = items_params.values.map(&:to_i)
  #   user_id = current_user.id
  #   begin
  #     ApplicationRecord.transaction do
  #       ids.each do |id|
  #         UserItem.save!(item_id: id, user_id: user_id)
  #       end
  #     end
  #     redirect_to :show
  #   rescue
  #     # エラー処理
  #   end
  # end

  def items_params
    # params.permit(Category.all.map { |c| c.id }.map { |id| id.to_s })
    # params.permit(Category.all.map(&:id).map(&:to_s))
  end
end
