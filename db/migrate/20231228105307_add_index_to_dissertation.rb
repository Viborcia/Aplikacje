class AddIndexToDissertation < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :dissertations, :users, column: :student_index
    add_foreign_key :dissertations, :users, column: :promoter_index
  end
end
