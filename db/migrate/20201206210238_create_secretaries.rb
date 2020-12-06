class CreateSecretaries < ActiveRecord::Migration[6.0]
  def change
    create_table :secretaries do |t|
      t.string :state
      t.string :coordinator

      t.timestamps
    end
  end
end
