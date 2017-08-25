class LogController < ActionController::API
  def index
    @logs = Log.all
    render json: @logs
  end
  
  private
  def log_params
    params.require(:log).permit(:msg, :text)
   end
end
