class CreateUserDesks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_desks do |t|
    	t.integer :seat
    	t.date :from_date
    	t.date :end_date

      t.timestamps
    end
  end
end
