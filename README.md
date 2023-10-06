# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :calendars
- has_many :messages

## rooms テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_one :calendar
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## calendars テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | nul: false                     |
| time_start | integer    | nul: false                     |
| user       | references | null: false, foreign_key: true |
| room       | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
