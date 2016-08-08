class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :feed, foreign_key: true
      t.text :url
      t.string :title
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
