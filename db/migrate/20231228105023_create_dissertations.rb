class CreateDissertations < ActiveRecord::Migration[7.0]
  def change
    create_table :dissertations, id: false, primary_key: :index do |t|
      t.integer :index
      t.integer :student_index
      t.integer :promoter_index
      t.timestamp :sending_date
      t.string :feedback
      t.integer :mark
      t.string :review

      t.timestamps
    end
  end
end
