class AddColumnToSummary < ActiveRecord::Migration[7.0]
  def change
    add_column :summaries, :user, :string
  end
end
