# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



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
