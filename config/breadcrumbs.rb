# ホーム
crumb :root do
  link "メルカリ", root_path
end

# マイページ
crumb :mypage do
  link "マイページ", user_mypage_path
  parent :root
end

crumb :profile do
  link "プロフィール", user_prof_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", user_logout_path
  parent :mypage
end


# 以下未実装 実装が完了次第対応

# crumb :notifications do
#   link "お知らせ", mypage_notification_path
#   parent :mypage
# end

# crumb :todo do
#   link "やることリスト", mypage_todo_path
#   parent :mypage
# end

# crumb :product do
#   link "#{Product.find(id = params[:id]).name}", product_path
#   parent :root
# end


# crumb :search do
#   link "#{ params[:q][] }", search_path
#   parent :root
# end

# crumb :categories do
#   link "カテゴリー検索", categories_path
#   parent :root
# end

# crumb :brands do
#   link "ブランド検索", brands_categories_path
#   parent :root
# end
