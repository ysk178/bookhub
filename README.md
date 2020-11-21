# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password |        |             |

### Association

has_many :books
has_many :comments

## books テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| author      | string     | null: false                    |
| explanation | text       | null: false                    |
| genre_id    | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_many :comments


## comments テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |

### Association

belongs_to :user