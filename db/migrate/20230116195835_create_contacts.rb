class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end

# contact = Contact.new(first_name: "Bill", last_name: "Johnson", email: "billJ@myspace.com", phone_number: "3334445559")
