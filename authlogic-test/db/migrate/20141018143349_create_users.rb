class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
		# edit by mitsuba
			t.string    :email,             null: false
			t.string    :crypted_password,  null: false
			t.string    :password_salt,     null: false
			t.string    :persistence_token, null: false
      t.timestamps
    end
  end
end
