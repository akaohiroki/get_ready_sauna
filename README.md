## users テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| nickname      | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
| age           | integer | null: false |
| gender        | integer | null: false |
| sauna_history | integer | null: false |

### Association

- has_many :articles
- has_many :comments
- has_many :sample_images


## articles テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| bath_type       | integer    | null: false       |
| temperature     | integer    | null: false       |
| breadth         | integer    | null: false       |
| water_bath      | integer    | null: false       |
| break_space     | integer    | null: false       |
| prefecture      | integer    | null: false       |
| number_of_visit | integer    | null: false       |
| evaluation      | integer    | null: false       |
| general_comment | integer    | null: false       |
| user            | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| user    | references | foreign_key: true |
| article | references | foreign_key: true |
| comment | text       | null: false       |

### Association

- 


## sample_images テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- 