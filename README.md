# README

# japanapp2
![トップページ](https://i.gyazo.com/3d2d54f1c7a8e869cc397fc3c09c59ff.jpg)
![検索機能](https://i.gyazo.com/0eaeef05658e0422f5406f1a756d84fe.jpg)  

![いいね](https://i.gyazo.com/a3915cae5fad5fa164ff39150d7d9622.png)
![いいねランキング](https://i.gyazo.com/3e8e91ef50955404a2dbd9a7baea28dd.jpg)

# 制作背景

コンセプト: 日本の良さを海外へ  
世の中には多くのガイドブックが存在するがガイドアプリというのものは少ない。アプリにすることの強みは、ユーザーがたくさん投稿をできるので、本と違いアップデートができ、情報量も増える。その為、よりリアルな日本を世界の人へ発信ができる。日本をもっと知ってもらいたいと思いアプリを作成しました。

# 概要
- ユーザーログイン機能  
- 画像投稿機能
- サーチ機能
- 非同期によるコメント機能
- 非同期によるいいね機能
- いいねランキング

# 使い方
git clone https://github.com/kaitonishimura624/japanapp2.git  
cd japanapp2  
rails db:create  
rails db:migrate  
rails db:seed  
rails s  
  
デモ用アカウントのログイン情報  
  
email: t@test.com  
Password: test123  
  
# アプリURL
URL :http://18.177.19.224/

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
|nickname|string|null: false|


### Association
- has_many :images
- has_many :posts
- has_many :comments


## Note
データベースはMySQL、インフラはAWS、Nginx、Unicornを使用。  
AWSを使用してデプロイ済み  
  
写真複数枚投稿機能やGoogle地図API機能を導入予定。  




Author  
作成者: Kaito Nishimura  
E-mail: kaito.uw@gmail.com  