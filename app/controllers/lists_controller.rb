class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1
  def show
  end

  def  my_list
    @items = Item.where(:list_id => params[:id])
    @lists = List.find(params[:id]) 
    @item  = Item.new
    if params[:list]
      update_items
    end
  end

  # GET /lists/new
  def new
    @list = List.new
    @categories = Category.all
  end

  # GET /lists/1/edit
  def edit
    @categories = Category.all
  end

  # POST /lists
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      redirect_to @list, notice: 'List was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
    redirect_to lists_url, notice: 'List was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:status, :color, :name, :description, category_ids:[])
    end

    def update_items
      Item.where(:id => params[:list]).each do |item|
        if item.status == true
          @item_status = false
        else
          @item_status = true
        end
      end
      @updateq = (ActiveRecord::Base.connection.execute("UPDATE items SET status=#{@item_status} WHERE id=#{params[:list]}"));
      redirect_to "/my-list/#{params[:id]}" 
    end
end
