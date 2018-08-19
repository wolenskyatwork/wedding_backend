class CreateRsvp < ActiveRecord::Migration[5.2]
  def change
    create_table :rsvps do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.references :food_option, :index => true
      t.boolean :attending, :null => false, :default => false
      t.string :dietary_note
    end
  end
end
