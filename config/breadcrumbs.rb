
crumb :root do
  link "メルカリ", root_path
end


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
