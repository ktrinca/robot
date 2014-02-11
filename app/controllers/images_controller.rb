class ImagesController < ApplicationController
  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])
    @cases = Case.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new
    @cases = Case.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
    @cases = Case.all
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(params[:image])

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])
    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end

  #Crea archivo zip con los archivos csv y txt en el dir logs
def create_zip(zipfile_name)
  current_path = Dir.pwd
  
  file_path = "#{current_path}/assets/images/zip"

  @images = Image.all
  
  if @images.count > 0 
    Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
      @images.each do |filename|
        zipfile.add(filename.name, "#{current_path}/public#{filename.path.to_s}")
      end
  
    end
    #delete_files_logs(file_path, file_list) 
    
  end  
end 

def download
  current_path = Dir.pwd
  zipfile_name = "#{current_path}/app/assets/images/zip/images.zip" 
  if File.exist?(zipfile_name)
    File.delete(zipfile_name)
  end
  create_zip(zipfile_name)
  send_file( zipfile_name, :type=>"application/txt", :x_sendfile=>true, :disposition => 'inline')
end
  
end
