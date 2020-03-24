# README

# japanapp2

コンセプト: 日本の良さを海外へ  

日本のリアルを世界へ伝えるSNS観光アプリ  





# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|nickname|string||


### Association
- has_many :images
- has_many :posts
- has_many :comments


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|post_id|integer||
|text|text|null: false|

### Association
-  belongs_to :post
-  belongs_to :user 


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|foreign_key: true|
|post_id|bigint|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post, counter_cache: :likes_count



## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|body|string|null: false|
|image|string|null: false|
|user_id|integer||
|likes_count|integer||


### Association
- belongs_to :user
- has_many :comments
- has_many :likes, dependent: :destroy


## Note

AWSを使用してデプロイ済み  
写真複数枚投稿機能やGoogle地図API機能を導入予定。  


## Usage
git clone https://github.com/kaitonishimura624/japanapp2.git  
cd japanapp2  
rails db:create  
rails db:migrate  
rails s  
  
  
Author  
作成者: Kaito Nishimura  
E-mail: kaito.uw@gmail.com  