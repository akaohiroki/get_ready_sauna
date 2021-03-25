# Get Ready サウナ!!  
<br>

## アプリケーションの概要
投稿されているサウナ記事の情報を閲覧することができます。  
会員登録を行うことで、自分の好きなサウナ、お気に入りのサウナの情報を自由に投稿できます。  
サウナ・水風呂の温度、広さ、休憩スペースの有無、サウナの総合評価、投稿したユーザーのサウナ歴など細かく情報が記載されているので、自分に合ったサウナを見つけることができます。  
また、自分が投稿した記事はマイページにて一覧で保存されるので、サウナの日記帳のような役割も果たします。

その他にも、自分の気に入った投稿に対してコメントをしたり、いいねボタンを押して共感を示すことができます。  
投稿には任意で画像を添付できますが、サウナの画像はなかなか用意が難しいと思うので
サウナ画像を自由に閲覧し保存できる、サウナ画像一覧ページも設けました。
<br>
<br>

## URL

<br>


## 利用方法
画面右上にある新規登録ボタンをクリックすると、会員登録ページに遷移するので、そこで必要事項を入力して会員登録を行います。
会員登録が完了すると、画面右下にある投稿ボタンを押すことで投稿画面に遷移し、サウナ情報に関する記事の投稿をすることができます。

会員登録を行わなくても、投稿されている記事や、記事の投稿者の詳細情報を閲覧することは可能となっています。  
記事や投稿者の詳細情報を見るには、指定した記事や投稿者名をクリックすることで、各詳細ページへ遷移して閲覧することができます。
<br>
<br>

## 目指した課題解決
ペルソナ：20~30代のサウナ好き、サウナ覚えたての男性 
<br>
<br>
・自分の好きなサウナ、整えるサウナを紹介して共有したいという課題に対しての解決  
・サウナー同士で好きなサウナの投稿記事に、コメントやいいねができるなどのコミュニケーションがしたいという課題に対しての解決  
・ユーザーやサウナの詳細情報を見て、自分に合ったレベルのサウナを見つけたいという課題に対しての解決
<br>
<br>

 ## 制作背景  
 自分自身、ここ最近でサウナの魅力にすさまじく取り憑かれてしまい、サウナに関するアプリケーションを制作したいと思ったことが始まりです。 
 自分が体験したサウナの感想を自由に投稿して、いろんなサウナ好きの人たちと交流できるコミュニティがあったら面白いなと思い制作しました。  
 また、記事投稿者の年齢やサウナ歴を公開することにより、ユーザーは自分の経験値にあったサウナ情報を探せるように設定しました。
 <br>
 <br>
 
## 洗い出した要件
・ユーザー認証機能(devise)  
・ユーザー詳細閲覧機能  
・ユーザー情報編集機能  
・記事投稿機能  
・記事編集、削除機能  
・コメント機能  
・コメント削除機能  
・いいね機能  
・記事検索機能  
・サウナサンプル画像一覧表示機能
<br>
<br>

## DEMO  
### ・トップページ(投稿記事一覧画面)  
![6a39f32e731c310733ca4af6c1bba825](https://user-images.githubusercontent.com/78332914/112424079-20738b80-8d77-11eb-8b2e-2107feaa75af.gif)  
<br>
### ・新規登録画面
![1a91ea2cf3f90452ce54f9930dcd0cf1](https://user-images.githubusercontent.com/78332914/112426908-1bfda180-8d7c-11eb-9d98-48f5933270fc.gif)  
<br>
### ・記事投稿画面
![02425b4367c4d831aa9647fe74fb63ed](https://user-images.githubusercontent.com/78332914/112427117-6a12a500-8d7c-11eb-9ab0-25ed9139727d.gif)  
<br>
### ・投稿記事詳細画面
![17fe9daa44344bc4b33ed37bbaa196ba](https://user-images.githubusercontent.com/78332914/112427620-3dab5880-8d7d-11eb-9a65-175007eef128.gif)  
<br>
### ・ユーザー詳細画面
![7fa12bea25047a3715f65d775142e7a0](https://user-images.githubusercontent.com/78332914/112427769-7b0fe600-8d7d-11eb-891b-882c038677a9.gif)  
<br>
### ・ユーザー情報編集画面
![f777d8503ea1c68867483b44bce4504f](https://user-images.githubusercontent.com/78332914/112427915-be6a5480-8d7d-11eb-8981-069ba98bbdcb.gif)  
<br>
### ・投稿記事編集、削除画面
![d0aaeafbbab7c4d9e384c54ddc6d4a85](https://user-images.githubusercontent.com/78332914/112428389-6f70ef00-8d7e-11eb-9efb-e5097071c20b.gif)  
<br>
### ・静的ページ画面
![55e8a26be7d2ce8dc85cac3576bb94d3](https://user-images.githubusercontent.com/78332914/112428449-8a436380-8d7e-11eb-80fa-45a73b6cdf5b.gif)  
<br>
<br>

## 実装予定の機能
・ユーザーフォロー機能  
・コメント投稿、削除、非同期通信機能  
・複数条件による検索機能


## データベース設計



## ローカルでの動作方法



## テーブル設計
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
