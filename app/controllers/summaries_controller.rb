class SummariesController < ApplicationController
  before_action :set_summary, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: :show


  # GET /summaries
  def index
    @summaries = policy_scope(Summary)
  end

  # GET /summaries/1
  def show
    authorize @summary
  end

  # GET /summaries/new
  def new
    @summary = Summary.new

  end

  # GET /summaries/1/edit
  def edit
  end

  # POST /summaries
  def create
    @summary = Summary.new(summary_params)

    if @summary.save
      redirect_to @summary, notice: "El resumen medico fue creado."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /summaries/1
  def update
    if @summary.update(summary_params)
      redirect_to @summary, notice: "Summary was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /summaries/1
  def destroy
    @summary.destroy
    redirect_to summaries_url, notice: "Summary was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summary
      @summary = Summary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def summary_params
      params.require(:summary).permit(:text)
    end
end
