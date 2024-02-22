class AddUserIdToDissertation < ActiveRecord::Migration[7.0]
  def change
    add_reference :dissertations, :user, foreign_key: true
  end
end
