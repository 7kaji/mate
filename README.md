テスト用レポジトリ

DB Schema.define

User 1--* Member *--1 Club 

```
ActiveRecord::Schema.define(version: 20151029142456) do

  create_table "clubs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "club_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "members", ["club_id"], name: "index_members_on_club_id", using: :btree
  add_index "members", ["user_id"], name: "index_members_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "members", "clubs"
  add_foreign_key "members", "users"
end
```

```
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed

reset

$ bundle exec rake:db reset
```

いろいろ試す

```
$ bundle exec rails c
```
