class AddPhoneAndEmailToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :phone_number, :string
    add_column :suppliers, :email, :string
  end
end
