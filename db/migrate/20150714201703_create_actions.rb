class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :title
      t.date :date
      t.string :body

      t.timestamps
    end
  end
end
