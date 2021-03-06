class NotationsController < ApplicationController
  before_action :set_notation, only: [:show, :edit, :update, :destroy]

  # GET /notations
  # GET /notations.json
  def index
    @notations = Notation.all
  end

  # GET /notations/1
  # GET /notations/1.json
  def show
  end

  # GET /notations/new
  def new
    @notation = Notation.new
  end

  # GET /notations/1/edit
  def edit
  end

  # POST /notations
  # POST /notations.json
  def create
    @notation = Notation.new(notation_params)

    respond_to do |format|
      if @notation.save
        format.html { redirect_to :back, notice: 'Notation set.' }
        format.json { render :show, status: :created, location: @notation }
      else
        format.html { render :new }
        format.json { render json: @notation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notations/1
  # PATCH/PUT /notations/1.json
  def update
    respond_to do |format|
      if @notation.update(notation_params)
        format.html { redirect_to @notation, notice: 'Notation was successfully updated.' }
        format.json { render :show, status: :ok, location: @notation }
      else
        format.html { render :edit }
        format.json { render json: @notation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notations/1
  # DELETE /notations/1.json
  def destroy
    @notation.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Notation unset.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notation
      @notation = Notation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notation_params
      params.require(:notation).permit(:criterion_id, :subject_id, :subject_type, :score)
    end
end
