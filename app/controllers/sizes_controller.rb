class SizesController < ApplicationController

  def index
    @sizes = Size.all
    respond_to do |format|
      format.html #index.html.haml
      format.json { render json: @sizes }
    end
  end

  def show
    @size = Size.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @size }
    end
  end

  def new
    @size = Size.new
    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @size }
    end
  end

  def edit
    @size = Size.find(params[:id])
  end

  def create
    @size = Size.new(params[:size])

    respond_to do |format|
      if @size.save
        format.html { redirect_to @size, notice: 'Size was successfully created.' }
        format.json { render json: @size, status: :created, location: @size }
      else
        format.html { render action: "new" }
        format.json { render json: @size.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @size = Size.find(params[:id])

    respond_to do |format|
      if @size.update_attributes(params[:size])
        format.html { redirect_to @size, notice: 'Size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @size.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @size = Size.find(params[:id])
    @size.destroy

    respond_to do |format|
      format.html { redirect_to sizes_url }
      format.json { head :no_content }
    end
  end
end
