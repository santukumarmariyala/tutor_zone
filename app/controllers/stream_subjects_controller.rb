class StreamSubjectsController < ApplicationController
  before_action :set_stream_subject, only: [:show, :edit, :update, :destroy]

  # GET /stream_subjects
  # GET /stream_subjects.json
  def index
    @stream_subjects = StreamSubject.all
  end

  # GET /stream_subjects/1
  # GET /stream_subjects/1.json
  def show
  end

  # GET /stream_subjects/new
  def new
    @stream_subject = StreamSubject.new
  end

  # GET /stream_subjects/1/edit
  def edit
  end

  # POST /stream_subjects
  # POST /stream_subjects.json
  def create
    @stream_subject = StreamSubject.new(stream_subject_params)

    respond_to do |format|
      if @stream_subject.save
        format.html { redirect_to @stream_subject, notice: 'Stream subject was successfully created.' }
        format.json { render :show, status: :created, location: @stream_subject }
      else
        format.html { render :new }
        format.json { render json: @stream_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stream_subjects/1
  # PATCH/PUT /stream_subjects/1.json
  def update
    respond_to do |format|
      if @stream_subject.update(stream_subject_params)
        format.html { redirect_to @stream_subject, notice: 'Stream subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @stream_subject }
      else
        format.html { render :edit }
        format.json { render json: @stream_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stream_subjects/1
  # DELETE /stream_subjects/1.json
  def destroy
    @stream_subject.destroy
    respond_to do |format|
      format.html { redirect_to stream_subjects_url, notice: 'Stream subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream_subject
      @stream_subject = StreamSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stream_subject_params
      params.require(:stream_subject).permit(:stream_id, :subject_id, :year)
    end
end
