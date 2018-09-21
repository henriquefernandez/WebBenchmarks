class ApplicationController < ActionController::API
  def index
    render json: {text: "benchmark"}
  end
end
