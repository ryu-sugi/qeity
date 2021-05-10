# DB 設計

## users table

| Column              | Type                | Options                  |          
|-------------------- |---------------------|--------------------------|
| nickname            | string              | null: false              |
| first_name          | string              | null: false              |
| last_name           | string              | null: false              |
| first_name_kana     | string              | null: false              |
| last_name_kana      | string              | null: false              |
| email               | string              | null: false,unique: true |
| encrypted_password  | string              | null: false              |
| birth_date          | date                | null: false              |

### Association

- has_many :arts
- has_many :buys
- has_many :comments

## arts table

| Column              | Type                | Options                 |
|-------------------- |---------------------|-------------------------|
| art                 | string              | null: false             |
| art_move            | Active storageで実装 | null: false             |
| category_id         | integer             | null: false             |
| value               | integer             | null: false             |
| description         | text                | null: false             |
| condition_id        | integer             | null: false             |
| shipping_cost_id    | integer             | null: false             |
| shipping_area_id    | integer             | null: false             |
| shipping_day_id     | integer             | null: false             |
| user_id             | references          | foreign_key: true       |


### Association

- belongs_to :user
- has_one    :buy

## buys table

| Column              | Type                | Options                 |          
|-------------------- |---------------------|-------------------------|
| user_id             | references          | foreign_key: true       |
| art_id              | references          | foreign_key: true       |
### Association

- belongs_to :user
- belongs_to :item
- has_one    :shipping_address

## shipping_addresses table 


| Column              | Type                | Options                 |          
|-------------------- |---------------------|-------------------------|
| postal_code         | string              | null: false             |
| shipping_area_id    | integer             | null: false             |
| town                | string              | null: false             |
| building_name       | string              |                         |
| address             | string              | null: false             |
| phone               | string              | null: false             |
| buy_id              | references          | foreign_key: true       |

### Association

- belongs_to :buy

## comments table

| Column              | Type                | Options                 |          
|-------------------- |---------------------|-------------------------|
| comment             | string              | null: false             |
| art_id              | references          | foreign_key: true       |
| user_id             | references          | foreign_key: true       |


### Association

- belongs_to :user
- belongs_to :art
