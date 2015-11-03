class CreateInductionSessions < ActiveRecord::Migration
  def change
    create_table :induction_sessions do |t|
      t.references :user
      t.datetime :date

      t.timestamps null: false
    end
  end
end
