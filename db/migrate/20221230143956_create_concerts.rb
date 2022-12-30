class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.date :date
      t.time :time
      t.string :title
      t.string :fb_link
      t.string :coordinates
      t.string :location_name
      t.string :ticket_link
      t.string :location_link

      t.timestamps
    end
  end
end
