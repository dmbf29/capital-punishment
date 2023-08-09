class CreatePrisons < ActiveRecord::Migration[7.0]
  def change
    create_table :prisons do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
