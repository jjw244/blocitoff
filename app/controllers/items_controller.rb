class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)

    if @item.save
      flash[:notice] = "Your item was saved successfully!!"
      redirect_to users_show_path
    else
      flash[:alert] = "There was an error saving your item.  Please try again."
      redirect_to users_show_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :user)
  end
end
