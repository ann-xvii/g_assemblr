class CreateGithubData < ActiveRecord::Migration
  def change
    create_table :github_data do |t|

      t.timestamps null: false
    end
  end
end
