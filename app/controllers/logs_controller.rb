class LogsController < ActionController::API
  def index
    @logs = Log.all
    render json: @logs
  end

  def show
    render json: Log.find(params[:id])
  end
  
  def create
    @log = Log.new(log_params)

    if @log.save
        render json: @log
    else
        render json: @log
    end
  end


  def update
    @log = Log.find(params[:id])
    if @log.update(log_params)
      render json: @log
    else
      render json: @log
    end
  end

    def destroy
        @log = Log.find(params[:id])
        @log.destroy
        render json: @log
    end

  private
  def log_params
    params.require(:log).permit(:msg, :when)
   end
end
