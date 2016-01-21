class ItemsController < ApplicationController
  include ItemsHelper

  def index
    @items = Item.all
  end


 def show
   @item = Item.find(params[:id])

   @comment = Comment.new
   @comment.item_id = @item.id
 end

 def new
  @item = Item.new
 end

 def create
   @item = Item.new(item_params)
   @item.save

  redirect_to item_path(@item)
 end


 def edit
   @item = Item.find(params[:id])
 end

 def update
   @item = Item.find(params[:id])
   @item.update(item_params)

   flash.notice = "Product '#{@item.name}' Updated!"

   redirect_to item_path(@item)
 end

 def destroy
    @item = Item.find(params[:id])
    @item.destroy

    flash.notice = "Item #{@item.name} was deleted!"

    redirect_to items_path
  end

end
