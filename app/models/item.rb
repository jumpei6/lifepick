class Item < ActiveRecord::Base
  belongs_to  :package
  belongs_to  :category

  # テストで書いてもらったもの
  # def self.fetch_items_priced_less_than(price)
  #   self.where("price < ?", price)
  # end

  # 自分が作成した、category_idごとの配列に同一idのitemを格納したもの
  # def self.grouped_items_by_categories
  #   ids = Category.ids
  #   ids.map{|item| Item.where(category_id: item)}
  # end

  # 引数であるpackage_idと同一のItem全てを、category_idごとに「category_id.name」と「同じcategory_idをもつItem全て」もハッシュにする関数
  # ##def self.hoge == クラスメソッド。
  # def Item.hogeとやっても同じ意味。modelクラスのレコードを検索する時などに使う
  def self.grouped_items_by_categories(package_id)
    # category.idごとにpairのハッシュを格納する配列
    options = []
    # categoriesに対してmapで繰り返し
    # options = Category.all.map do |category|
    Category.all.map do |category|
      # 「category.name」と「category_idと同一のitem全て」を一つのhashにするため.
      # hashだとkeyが設定できるので可読性が上がる。
      pair = {}
      # category_idの名称を代入
      pair[:title] = category.name
      # category_idとCategoryテーブルのidが同一のitemを全て取得して代入
      pair[:items] = Item.where(category_id: category.id, package_id: package_id)
      # category.idごとにpairのハッシュを配列に格納
      options[category.id] = pair
    end
  end
end

