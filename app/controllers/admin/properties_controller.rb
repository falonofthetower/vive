class Admin::PropertiesController < AdminsController
  def index
    @properties = Property.all
  end

  def show
    find_property
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to admin_properties_path
      flash[:notice] = "File property created."
    else
      render :new
      flash[:notice] = "There was an error please try again."
    end
  end

  def edit
    find_property
  end

  def update
    find_property
    if @property.update(property_params)
      redirect_to admin_properties_path
      flash[:notice] = "Property updated."
    else
      redirect_to :edit
      flash[:notice] = "Property not updated."
    end
  end

  def destroy
    find_property
    @property.destroy
    redirect_to admin_properties_path
    flash[:notice] = "You have deleted the property"
  end

  private

  def property_params
    params.require(:property).permit!
  end

  def find_property
    @property = Property.find(params[:id])
  end
end
