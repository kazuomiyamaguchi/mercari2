# faker
20.times do
     Item.create(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price,
        category_id: Faker::Number.between(1, 10)
      )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
レディース, メンズ, ベビー・キッズ, インテリア・住まい・小物, 本・音楽・ゲーム, おもちゃ・ホビー・グッズ, おもちゃ・ホビー・グッズ, コスメ・香水・美容, 家電・スマホ・カメラ, スポーツ・レジャー, ハンドメイド, チケット, 自動車・オートバイ, その他  = Category.create([{name: "レディース"}, {name: "メンズ"}, {name: "ベビー・キッズ"}, {name: "インテリア・住まい・小物"}, {name: "本・音楽・ゲーム"}, {name: "おもちゃ・ホビー・グッズ"}, {name: "コスメ・香水・美容"}, {name: "家電・スマホ・カメラ"}, {name: "スポーツ・レジャー"}, {name: "ハンドメイド"}, {name: "チケット"}, {name: "自動車・オートバイ"}, {name: "その他"}])



トップス, ジャケット_アウター, パンツ, スカート, ワンピース, 靴, ルームウェア_パジャマ, レッグウェア, 帽子, バッグ, アクセサリー, ヘアアクセサリー, 小物, 時計, ウィッグ_エクステ, 浴衣_水着, スーツ_フォーマル_ドレス, マタニティ, その他 = レディース.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "靴"}, {name: "ルームウェア/パジャマ"}, {name: "レッグウェア"}, {name: "帽子"}, {name: "バッグ"}, {name: "アクセサリー"}, {name: "ヘアアクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "ウィッグ/エクステ"}, {name: "浴衣/水着"}, {name: "スーツ/フォーマル/ドレス"}, {name: "マタニティ"}, {name: "その他"}, ])

Tシャツ_カットソー_半袖_袖なし, Tシャツ_カットソー_七分_長袖, シャツ_ブラウス_半袖_袖なし, シャツ_ブラウス_七分_長袖, ポロシャツ, キャミソール, タンクトップ, ホルターネック, ニット_セーター, チュニック, カーディガン_ボレロ, アンサンブル, ベスト_ジレ, パーカー, トレーナー_スウェット, ベアトップ_チューブトップ, ジャージ, その他 = トップス.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}])

テーラードジャケット, ノーカラージャケット = ジャケット_アウター.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}])

デニム_ジーンズ, ショートパンツ = パンツ.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}])

ミニスカート, ひざ丈スカート = スカート.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}])

ミニワンピース, ひざ丈ワンピース = ワンピース.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}])

ハイヒール_パンプス, ブーツ = 靴.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}])

パジャマ, ルームウェア = ルームウェア_パジャマ.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])

ソックス, スパッツ_レギンス = レッグウェア.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}])

ニットキャップ_ビーニー, ハット = 帽子.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}])

ハンドバッグ ,トートバッグ = バッグ.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}])

ネックレス, ブレスレット= アクセサリー.children.create([{name: "ネックレス"}, {name: "ブレスレット"}])

ヘアゴム_シュシュ,ヘアバンド_カチューシャ = ヘアアクセサリー.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}])

長財布, 折り財布 = 小物.children.create([{name: "長財布"}, {name: "折り財布"}])

腕時計_アナログ, 腕時計_デジタル = 時計.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}])

前髪ウィッグ, ロングストレート= ウィッグ_エクステ.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}])

浴衣, 着物= 浴衣_水着.children.create([{name: "浴衣"}, {name: "着物"}])

スカートスーツ上下, パンツスーツ上下 = スーツ_フォーマル_ドレス.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}])

トップス, アウター = マタニティ.children.create([{name: "トップス"}, {name: "アウター"}])

コスプレ, 下着 = その他.children.create([{name: "コスプレ"}, {name: "下着"}])

トップス, ジャケット_アウター, パンツ, 靴, バッグ, スーツ, 帽子, アクセサリー, 小物, 時計, 水着, レッグウェア, アンダーウェア, その他 = メンズ.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "靴"}, {name: "バッグ"}, {name: "スーツ"}, {name: "帽子"}, {name: "アクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "水着"}, {name: "レッグウェア"}, {name: "アンダーウェア"}, {name: "その他"}])

Tシャツ_カットソー_半袖_袖なし, Tシャツ_カットソー_七分_長袖 = トップス.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}])

テーラードジャケット, ノーカラージャケット = ジャケット_アウター.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}])

デニム_ジーンズ, ワークパンツ_カーゴパンツ = パンツ.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}])

スニーカー, サンダル = 靴.children.create([{name: "スニーカー"}, {name: "サンダル"}])

ショルダーバッグ, トートバッグ = バッグ.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"}])

スーツジャケット, スーツベスト = スーツ.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}])

キャップ, ハット = 帽子.children.create([{name: "キャップ"}, {name: "ハット"}])

ネックレス, ブレスレット= アクセサリー.children.create([{name: "ネックレス"}, {name: "ブレスレット"}])

長財布, 折り財布 = 小物.children.create([{name: "長財布"}, {name: "折り財布"}])

腕時計_アナログ, 腕時計_デジタル = 時計.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}])

一般水着, スポーツ用 = 水着.children.create([{name: "一般水着"}, {name: "スポーツ用"}])

ソックス, レギンス_スパッツ = レッグウェア.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}])

トランクス, ボクサーパンツ = アンダーウェア.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}])

ベビー服_女の子用_95cm, ベビー服_男の子用_95cm, ベビー服_男女兼用_95cm, キッズ服_男の子用_100cm_, キッズ服_男女兼用_100cm_, キッズ靴, 子ども用ファッション小物, おむつ_トイレ_バス, 外出_移動用品, 授乳_食事, ベビー家具_寝具_室内用品, おもちゃ, 行事_記念品, その他 = ベビー・キッズ.children.create([{name: "ベビー服(女の子用) ~95cm"}, {name: "ベビー服(男の子用) ~95cm"}, {name: "ベビー服(男女兼用) ~95cm"}, {name: "キッズ服(男の子用) 100cm~"}, {name: "キッズ服(男女兼用) 100cm~"}, {name: "キッズ靴"}, {name: "子ども用ファッション小物"}, {name: "おむつ/トイレ/バス"}, {name: "外出/移動用品"}, {name: "授乳/食事"}, {name: "ベビー家具_寝具_室内用品"}, {name: "おもちゃ"}, {name: "行事/記念品"}, {name: "その他"}])

トップス, アウター = ベビー服_女の子用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

トップス, アウター = ベビー服_男の子用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

トップス, アウター = ベビー服_男女兼用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

コート, ジャケット_上着 = キッズ服_男の子用_100cm_.children.create([{name: "コート"}, {name: "ジャケット/上着"}])

コート, ジャケット_上着 = キッズ服_男女兼用_100cm_.children.create([{name: "コート"}, {name: "ジャケット/上着"}])

スニーカー, サンダル = キッズ靴.children.create([{name: "スニーカー"}, {name: "サンダル"}])

靴下_スパッツ, 帽子 = 子ども用ファッション小物.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}])

おむつ用品, おまる_補助便座 = おむつ_トイレ_バス.children.create([{name: "おむつ用品"}, {name: "おまる/補助便座"}])

ベビーカー, 抱っこひも_スリング = 外出_移動用品.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}])

ミルク, ベビーフード = 授乳_食事.children.create([{name: "ミルク"}, {name: "ベビーフード"}])

ベッド, 布団_毛布 = ベビー家具_寝具_室内用品.children.create([{name: "ベッド"}, {name: "布団/毛布"}])

おふろのおもちゃ, がらがら = おもちゃ.children.create([{name: "おふろのおもちゃ"}, {name: "がらがら"}])

お食い初め用品, お食い初め用品 = 行事_記念品.children.create([{name: "お食い初め用品"}, {name: "お食い初め用品"}])

母子手帳用品, その他 = その他.children.create([{name: "母子手帳用品"}, {name: "その他"}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])



