class MapController < ApplicationController
  def index
    @states = State.all
    
    if params[:state_id]
      @state = State.find_by(id: params[:state_id])
    end
  end
end
