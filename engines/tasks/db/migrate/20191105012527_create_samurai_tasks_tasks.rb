class CreateSamuraiTasksTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :context
      t.references :user, index: true
      t.references :contact, index: true

      t.timestamps
    end
  end
end
