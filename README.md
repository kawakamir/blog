
## blogsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|reference|null: false, foreign_key: true|

### Association
- blongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true |
|password|string|null: false |

### Association
- has_many :blogs
