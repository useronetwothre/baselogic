class CreateBeneficiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficiaries do |t|
      t.string :rid
      t.string :uid
      t.string :full_name
      t.string :address
      t.string :country
      t.string :currency
      t.string :account_number
      t.string :account_type
      t.string :bank_name
      t.string :bank_address
      t.string :bank_country
      t.string :bank_swift_code
      t.string :intermediary_bank_name
      t.string :intermediary_bank_address
      t.string :intermediary_bank_country
      t.string :intermediary_bank_swift_code
      t.string :status

      t.timestamps
    end
  end
end
