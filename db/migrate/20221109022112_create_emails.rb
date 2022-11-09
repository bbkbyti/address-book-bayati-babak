class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
