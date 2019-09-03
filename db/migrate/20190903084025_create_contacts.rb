class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
			t.string :name, null: false, default: ''
			t.string :number, null: false, default: ''
			t.string :desription, default: ''
		t.timestamps
    end
  end
end
