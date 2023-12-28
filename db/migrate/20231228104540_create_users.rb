class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false, primary_key: :index do |t|
      t.integer :index
      t.string :password
      t.boolean :is_student
      t.boolean :is_promoter
      t.boolean :is_admin

      t.timestamps
    end
  end
end
