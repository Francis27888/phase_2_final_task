class CreateTweeterclones < ActiveRecord::Migration[5.1]
  def change
   create_table :tweeterclones do |t|
      t.text :content

      t.timestamps
    end
  end
end
