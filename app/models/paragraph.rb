class Paragraph < ActiveRecord::Base
  before_save :format_sentence_space

  def format_sentence_space
    self.corrected_paragraph = self.original_paragraph.gsub(/\.\s{2}/, ". ")
    self.meta_paragraph = self.original_paragraph.gsub(/\.\s{2}/, ". *")
  end
end
