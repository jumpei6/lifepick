class PackagesController < ApplicationController

  def index
    # Packageテーブルから、全てのレコードを取得
    @packages = Package.all.order("id DESC")
  end

  def show
    # Packageテーブルから、該当idのレコードを取得
    # @packageとしてDBデータを表示@view => インスタンス変数に
    @package = Package.find(params[:id])
    # Itemテーブルから、該当package.idのレコードのうち、default=1のものだけを取得
    @items_default = @package.items.where(default: 1)
  end

  def pick # 独自メソッド
    # Itemのモデルで作成したクラスメソッドを読み込んで代入
    @options = Item.grouped_items_by_categories(params[:id])
  end

end
