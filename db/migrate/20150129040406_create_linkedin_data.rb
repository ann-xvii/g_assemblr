class CreateLinkedinData < ActiveRecord::Migration
  def change
    create_table :linkedin_data do |t|
      t.string	:name
      t.string 	:email
      t.string 	:first_name
      t.string  :last_name
      t.string	:location
      t.string  :description
      t.string	:phone
      t.string 	:image
      t.string  :headline
      t.string  :industry
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
