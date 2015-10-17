class CreateSocialProfiles < ActiveRecord::Migration
  def change
    create_table :social_profiles do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :access_token
      t.string :access_secret
      t.string :name
      t.string :nickname
      t.string :email
      t.string :url
      t.string :image_url
      t.string :description
      t.text :other
      t.text :credentials
      t.text :raw_info

      t.timestamps null: false
    end
  end
end
