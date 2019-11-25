class HelloController < ApplicationController
  def index
    render json: {ho: 'x'}
  end
end
