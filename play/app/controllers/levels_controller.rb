class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def create
    if params[:name]
      if Level.find_by(name: params[:name])
        if params[:yourlevel] > "3"
          render plain: "Hi," + params[:name] + "your level:" + params[:yourlevel]
        else
          render plain: "Hi," + params[:name] + ",your level:" + "3"
        end
      else
        @level = Level.new
        @level.name = params[:name]
        @level.save
        render plain: "hello," + @level.name + ",you are first on this website,your level is 1"
      end
    elsif Level.first
      destroyFirstOne
    else
      render plain: "there are no name in database"
    end
  end
  
  private
  
  def destroyFirstOne
    @level_f = Level.first
      render plain: "delete " + @level_f.name + " in database"
    @level_f.destroy  
  end

end
