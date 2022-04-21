class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string  :name,   null: false, index: {unique: true}
      t.string  :code,   null: false, index: {unique: true}
      t.integer :kind,   null: false, default: 0, limit: 1
      t.string  :unicode
      t.integer :status, null: false, default: 0, limit: 1
      t.timestamps
    end
  end
end
