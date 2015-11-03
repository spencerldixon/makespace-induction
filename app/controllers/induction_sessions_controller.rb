class InductionSessionsController < ApplicationController
  before_action :set_induction_session, only: [:show, :edit, :update, :destroy]

  # GET /induction_sessions
  # GET /induction_sessions.json
  def index
    @induction_sessions = InductionSession.all
  end

  # GET /induction_sessions/1
  # GET /induction_sessions/1.json
  def show
  end

  # GET /induction_sessions/new
  def new
    @induction_session = InductionSession.new
  end

  # GET /induction_sessions/1/edit
  def edit
  end

  # POST /induction_sessions
  # POST /induction_sessions.json
  def create
    @induction_session = InductionSession.new(induction_session_params)

    respond_to do |format|
      if @induction_session.save
        format.html { redirect_to @induction_session, notice: 'Induction session was successfully created.' }
        format.json { render :show, status: :created, location: @induction_session }
      else
        format.html { render :new }
        format.json { render json: @induction_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /induction_sessions/1
  # PATCH/PUT /induction_sessions/1.json
  def update
    respond_to do |format|
      if @induction_session.update(induction_session_params)
        format.html { redirect_to @induction_session, notice: 'Induction session was successfully updated.' }
        format.json { render :show, status: :ok, location: @induction_session }
      else
        format.html { render :edit }
        format.json { render json: @induction_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /induction_sessions/1
  # DELETE /induction_sessions/1.json
  def destroy
    @induction_session.destroy
    respond_to do |format|
      format.html { redirect_to induction_sessions_url, notice: 'Induction session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_induction_session
      @induction_session = InductionSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def induction_session_params
      params.require(:induction_session).permit(:user, :date)
    end
end
