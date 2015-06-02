class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :original_paragraph
      t.text :corrected_paragraph
      t.text :meta_paragraph

      t.timestamps null: false
    end
  end
end
