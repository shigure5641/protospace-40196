# テーブル設計

##users テーブル
| column               | type        | options                   |
| email                | string      | null: false, unique: true |
| encrypted_password   | string      | null: false               |
| name                 | string      | null: false               |
| profile              | text        | null: false               |
| occupation           | text        | null: false               |
| position             | text        | null: false               |

##アソシエーション
-has_many : prototypes
-has_many : comments

##prototypes テーブル
| column               | type        | options                       |
| title                | string      | null: false                   |
| catch_copy           | text        | null: false                   |
| concept              | text        | null: false                   |
| user                 | references  | null: false foreign_key: true |

##アソシエーション
-belongs_to : usersテーブル
-has_many   : commentsテーブル

##comments テーブル
| column               | type        | options                       |
| content              | text        | null: false                   |
| prototype            | references  | null: false foreign_key: true |
| user                 | references  | null: false foreign_key: true |

##アソシエーション
-belongs_to : usersテーブル
-belongs_to : prototypesテーブル