class WtextController < ApplicationController
  def index
    @text = case params[:hour].to_i
            when 0..5
              Wtext.where('hour = ?', 6)
            when 6..11
              Wtext.where('hour = ?', 12)
            when 12..17
              Wtext.where('hour = ?', 18)
            when 18..23
              Wtext.where('hour = ?', 24)
            else
              Wtext.where('hour = ?', 18)
            end
    render json: @text[0]
  end
end
