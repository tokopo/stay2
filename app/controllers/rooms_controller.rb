class RoomsController < ApplicationController

  def new
    @room = Room.new #空のインスタンスを生成
  end

  def show
    @room = Room.find(params[:id])
  end

  def create
    @recipe = Room.new(room_params)
    if @room.save!
      redirect_to room_path(@room) #リダイレクト先をshowに変更
    else
      render :new
    end
  end



  private
  def room_params
    params.require(:room).permit(:title, :string, :content, :text, :money, :integer, :live, :text, :image) #「:image」を追加
  end  
end
