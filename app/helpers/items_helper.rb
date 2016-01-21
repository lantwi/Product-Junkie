module ItemsHelper

  def item_params
  params.require(:item).permit(:name, :description,:image_url,:buy_url, :tag_list)
  end

end
