class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name,    :null => false
      t.string :email,   :null => false
      t.string :city,    :null => false
      t.string :state,   :null => false
      t.string :phone,   :null => false
      t.string :type,    :null => false
      t.string :message, :null => false

      t.timestamps
    end
  end
end
