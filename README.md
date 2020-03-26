# README

# japanapp2

コンセプト: 日本の良さを海外へ  

日本のリアルを世界へ伝えるSNS観光アプリ  


![トップページ](https://i.gyazo.com/3d2d54f1c7a8e869cc397fc3c09c59ff.jpg)
![検索機能](https://i.gyazo.com/0eaeef05658e0422f5406f1a756d84fe.jpg)  

![いいね](https://i.gyazo.com/3e8e91ef50955404a2dbd9a7baea28dd.jpg)
![いいねランキング](https://i.gyazo.com/a3915cae5fad5fa164ff39150d7d9622.png)


# DB設計


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


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|nickname|string||


### Association
- has_many :images
- has_many :posts
- has_many :comments


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