class CasesController < ApplicationController
  # GET /cases
  # GET /cases.json
  def index
    @cases = Case.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cases }
    end
  end

  # GET /cases/1
  # GET /cases/1.json
  def show
    @case = Case.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @case }
    end
  end

  # GET /cases/new
  # GET /cases/new.json
  def new
    @case = Case.new
    @clients = Client.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @case }
    end
  end

  # GET /cases/1/edit
  def edit
    @case = Case.find(params[:id])
    @clients = Client.all
  end

  # POST /cases
  # POST /cases.json
  def create
    @case = Case.new(params[:case])

    respond_to do |format|
      if @case.save
        format.html { redirect_to @case, notice: 'Case was successfully dddcreated.' }
        format.json { render json: @case, status: :created, location: @case }
      else
        format.html { render action: "new" }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cases/1
  # PUT /cases/1.json
  def update
    @case = Case.find(params[:id])

    respond_to do |format|
      if @case.update_attributes(params[:case])
        format.html { redirect_to @case, notice: 'Case was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.json
  def destroy
    @case = Case.find(params[:id])
    @case.destroy

    respond_to do |format|
      format.html { redirect_to cases_url }
      format.json { head :no_content }
    end
  end

  def download
    @cases = Case.all
    data = @cases
    file = "portafolio.xml"
    data =  render_to_body(:template=>"commons/xml" )  
    File.open(file, "w"){ |f| f << data }
    send_file( file, :type=>"application/txt", :x_sendfile=>true, :disposition => 'inline')

  end

end
