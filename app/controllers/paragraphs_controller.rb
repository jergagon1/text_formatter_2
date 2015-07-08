class ParagraphsController < ApplicationController
  # Index method for testing
  # def index
  #   @paragraphs = Paragraph.all
  #   render json: @paragraphs
  # end

  def create
    @paragraph = Paragraph.new(paragraph_params)
    if @paragraph.save
      render json: @paragraph, :only => [:corrected_paragraph, :meta_paragraph], status: :created
    end
  end

  private
  def paragraph_params
    params.require(:paragraph).permit(:original_paragraph, :corrected_paragraph, :meta_paragraph)
  end
end
