class PagesController < ApplicationController
  def index
    all_properties
  end

  def about
    all_properties
  end

  def about_process
    all_properties
  end

  private

  def all_properties
    @properties = Property.where(show_to_site: true)
  end
end
