class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :first_date
      t.date :last_date
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
