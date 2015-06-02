class ParagraphsController < ApplicationController
  # Index method for testing
  def index
    @paragraphs = Paragraph.all
    render json: @paragraphs
  end

  def create

    @paragraph = Paragraph.new(paragraph_params)
    if @paragraph.save
      render json: @paragraph, status: :created
    else
      render :json @paragraph.errors, status: :unprocessable_entity
    end
  end

  private
  def paragraph_params
    params.require(:paragraph).permit(:original_paragraph, :corrected_paragraph, :meta_paragraph)
  end
end
