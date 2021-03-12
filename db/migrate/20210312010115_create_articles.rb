class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string     :name,               null: false, default: ""
      t.integer    :prefecture_id,      null: false
      t.integer    :bath_type_id,       null: false
      t.integer    :temperature_id,     null: false
      t.integer    :breadth_id,         null: false
      t.integer    :water_bath_id,      null: false
      t.integer    :break_space_id,     null: false
      t.integer    :budget_id,          null: false
      t.integer    :number_of_visit_id, null: false
      t.integer    :evaluation_id,      null: false
      t.text       :general_comment,    null: false
      t.references :user,               foreign_key: true
      t.timestamps
    end
  end
end
