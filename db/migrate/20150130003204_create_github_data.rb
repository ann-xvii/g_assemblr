class CreateGithubData < ActiveRecord::Migration
  def change
    create_table :github_data do |t|
      t.string  :username
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
