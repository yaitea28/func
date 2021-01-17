class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :Url
      t.text   :summary
      t.timestamps
    end
  end
end
