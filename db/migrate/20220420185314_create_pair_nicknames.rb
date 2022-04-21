class CreatePairNicknames < ActiveRecord::Migration[7.0]
  def change
    create_table :pair_nicknames do |t|
      t.references :pair, null: false, foreign_key: true
      t.string     :name, index: {unique: true}
      t.integer    :status, null: false, default: 0, limit: 1

      t.timestamps
    end
  end
end
