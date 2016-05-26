class PropertiesController < ApplicationController
  def index
    @properties = Property.where(archive: false)
  end

  def show
    @property = Property.find(params[:id])
  end
end
