class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :facebook

      t.timestamps
    end
  end
end
