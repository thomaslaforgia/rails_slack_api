# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_18_183753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.boolean "is_channel"
    t.integer "created"
    t.boolean "is_archived"
    t.boolean "is_general"
    t.integer "unlinked"
    t.string "creator"
    t.string "name_normalized"
    t.boolean "is_shared"
    t.boolean "is_org_shared"
    t.boolean "is_member"
    t.boolean "is_private"
    t.boolean "is_mpim"
    t.text "members"
    t.text "topic"
    t.text "purpose"
    t.text "previous_names"
    t.integer "num_members"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "client_msg_id"
    t.string "text"
    t.string "user"
    t.string "ts"
    t.string "team"
    t.text "attachments"
    t.string "thread_ts"
    t.integer "reply_count"
    t.integer "reply_users_count"
    t.string "latest_reply"
    t.text "reply_users"
    t.text "replies"
    t.boolean "subscribed"
    t.text "reactions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subtype"
    t.boolean "edited"
    t.string "bot_id"
    t.string "old_name"
    t.string "name"
    t.string "username"
    t.text "files"
    t.boolean "upload"
    t.boolean "display_as_bot"
    t.string "inviter"
    t.boolean "is_intro"
    t.text "file"
    t.text "comment"
    t.string "purpose"
    t.text "pinned_to"
    t.text "pinned_info"
    t.text "icons"
    t.string "item_type"
    t.string "topic"
    t.text "root"
    t.string "bot_link"
    t.text "x_files"
    t.string "upload_reply_to"
    t.text "item"
    t.boolean "hidden"
    t.string "parent_user_id"
    t.string "channel"
  end

  create_table "users", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.string "team_id"
    t.boolean "deleted"
    t.string "color"
    t.string "real_name"
    t.string "tz"
    t.string "tz_label"
    t.integer "tz_offset"
    t.text "profile"
    t.boolean "is_admin"
    t.boolean "is_owner"
    t.boolean "is_primary_owner"
    t.boolean "is_restricted"
    t.boolean "is_ultra_restricted"
    t.boolean "is_bot"
    t.boolean "is_app_user"
    t.integer "updated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
