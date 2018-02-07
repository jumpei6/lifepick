// 「ページを読み込んだら」イベント発生
$(".radio_price").ready(function(e) {
  // チェックされているpriceの合計金額を取得
  prices = fetchCheckedRadioAll();
  // 合計金額を引数に、合計金額の表示箇所を書き換え
  WritePricesToHtml(prices);
});


// 「クリックされたら」イベント発生
$(".radio_price").on("click", function(e) {
  // チェックされているpriceの合計金額を取得
  prices = fetchCheckedRadioAll();
  // 合計金額を引数に、合計金額の表示箇所を書き換え
  WritePricesToHtml(prices);
});

// 選択したラジオボタンのpriceの合計を取得
function fetchCheckedRadioAll () {
  // inputタブの中でチェックされたデータを取得し、radiosに代入する
  var radios = $("input:checked");
  prices = 0
  // radiosから、各々のデータからpriceを取得し、足していく => 合計額を計算する
  $(radios).each(function(index){
    var price = $(this).data("price");
    prices = prices + price;
  });
  // 返り値として、prices（合計金額）を設定する
  return prices;
};

// 取得した合計金額をhtmlに書き換え
function WritePricesToHtml(prices){
  // htmlのid（total_price）のテキストをpriceに書き換え
  $('#total_price').text(prices)
};



// #選択肢一覧（取得できているか確認用）
// ##コンセプト一覧
// ボタンごとの金額を記載
// var price = $("#penthouse").data("price");
// console.log(price); // => 20000



