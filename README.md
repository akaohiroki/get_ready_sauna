## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| age                | integer | null: false |
| gender_id          | integer | null: false |
| sauna_history_id   | integer | null: false |
| self_introduction  | text    |             |

### Association

- has_many :articles
- has_many :comments
- has_many :likes


## articles テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| name               | string     | null: false       |
| prefecture_id      | integer    | null: false       |
| bath_type_id       | integer    | null: false       |
| temperature_id     | integer    | null: false       |
| breadth_id         | integer    | null: false       |
| water_bath_id      | integer    | null: false       |
| break_space_id     | integer    | null: false       |
| budget_id          | integer    | null: false       |
| number_of_visit_id | integer    | null: false       |
| evaluation_id      | integer    | null: false       |
| general_comment    | text       | null: false       |
| likes_count        | integer    |                   |
| user               | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes



## comments テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| text    | text       | null: false       |
| user    | references | foreign_key: true |
| article | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article


## likes テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| user    | references | foreign_key: true |
| article | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article