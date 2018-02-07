class PackagesController < ApplicationController

  def index
    # Packageテーブルから、全てのレコードを取得
    @packages = Package.all.order("id DESC")
  end

  def show
    # Packageテーブルから、該当idのレコードを取得
    @package = Package.find(params[:id])
    # Itemテーブルから、該当package.idのレコードを全て取得
    @items = @package.items
  end

  def pick # 独自メソッド
  end

end
