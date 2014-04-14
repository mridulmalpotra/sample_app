class CreateUserPics < ActiveRecord::Migration
  def change
    create_table :user_pics do |t|
      t.string :oauth_token
      t.string :pic_name
      t.string :path

      t.timestamps
    end
  end
end