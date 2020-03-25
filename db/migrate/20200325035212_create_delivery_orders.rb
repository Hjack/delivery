class CreateDeliveryOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_orders do |t|
      t.datetime :sent
      t.datetime :received
      t.boolean :confirmed, default: false
      t.datetime :due_date
      t.references :sender, foreign_key: true
      t.references :receiver, foreign_key: true

      t.timestamps
    end
  end
end
