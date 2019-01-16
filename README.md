# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique:true|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|e-mail|string|null: false, unique:true|
|password|string|null: false, unique:true|
|phone_number|string|null: false, unique:true|
|address_id|references|null: false, foreign_key: true|
|payment_id|references|null: false,foreign_key: true|
|creditcard_id|references|foreign_key: true|
|icon_image|text|
|profile|text|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|verygood|integer|
|good|integer|
|bad|integer|

### Association

- has_many :items
- has_many :commodity_tradings
- has_many :buyers, class_name: "user", through: commodity_tradings
- has_many :likes
- has_many :comments
- has_one :address
- has_one :payment
- has_one :creditcard

## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postcode|string|null: false|
|prefecture_id|references|null: false|
|city|string|null: false|
|address|string|null: false|
|building_name|string|

### Association

- belongs_to :user
- has_one :prefecture


## prefecturesテーブル

|Column|Type|Options|
|------|----|-------|
|prefecture|string|null: false|

### Association

- belongs_to :address

## paymentsテーブル

|Column|Type|Options|
|------|----|-------|
|method|string|

### Association

- belongs_to :user


## creditcardsテーブル

|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|expiration_month|integer|null: false|
|expiration_year|integer|null: false|
|security_code|integer|null: false|
|user_id|references|foreign_key: true|

### Association

- belongs_to :user


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_name|string|null: false|
|image_id|references|foreign_key: true|
|description|text|null: false|
|category_id|references|null: false, foreign_key: true|
|size_id|references|foreign_key: true|
|brand_id|references|foreign_key: true|
|condition_id|references|null: false, foreign_key: true|
|delivery_fee_id|references|null: false, foreign_key: true|
|ship_form_id|references|null: false, foreign_key: true|
|delivery_day_id|references|null: false, foreign_key: true|
|price|integer|null: false|

### Association

- belongs_to :user
- has_many :images
- belongs_to :category
- has_one :size
- has_one :brand
- has_one :condition
- has_one :delivery_fee
- has_one :ship_form
- has_one :delivery_day
- has_many :commodity_tradings
- has_many :likes
- has_many :comments

## Commodity_tradingsテーブル

|Column|Type|Options|
|------|----|-------|
|buyer_id|references|null false, foreign_key: true|
|item_id|references|null false, foreign_key: true|
|status|string|null false|

### Association

- belongs_to :buyer, class_name:"user"
- belongs_to :item

## Likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null false, foreign_key: true|
|item_id|references|null false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item

## Commentsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|text|
|user_id|references|null false, foreign_key: true|
|item_id|references|null false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item

## categorysテーブル

|Column|Type|Options|
|------|----|-------|
|category_path|string|null false|
|item_id|references|foreign_key: true|

### Association

- has_many :items

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|text|
|item_id|references|null: false, foreign_key: true|

### Association

- belongs_to :item


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|size|string|

### Association

- belongs_to :item

## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|

### Association

- belongs_to :item

## conditionsテーブル

|Column|Type|Options|
|------|----|-------|
|condition|string|

### Association

- belongs_to :item

## delivery_feesテーブル

|Column|Type|Options|
|------|----|-------|
|fee|string|

### Association

- belongs_to :item

## ship_formsテーブル

|Column|Type|Options|
|------|----|-------|
|area|string|

### Association

- belongs_to :item

## delivery_daysテーブル

|Column|Type|Options|
|------|----|-------|
|day|string|

### Association

- belongs_to :item
