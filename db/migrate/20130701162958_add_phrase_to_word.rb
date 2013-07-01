class AddPhraseToWord < ActiveRecord::Migration
  def change
    add_column :words, :phrase_id, :integer
  end
end
