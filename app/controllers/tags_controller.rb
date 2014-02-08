class TagsController < ApplicationController
  before_action :set_tag, only: [:show]
  respond_to :json

  # GET /tags.json
  def index
    respond_with Tag.page(params[:page]).map(&:name)
  end

  # GET /tags/1.json
  def show
    respond_with @tag ? @tag.missiles.page(params[:page]) : []
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find_by_name(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:missile_id, :body)
    end
end
