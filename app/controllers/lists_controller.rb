class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @team = Team.find(params[:team_id])
    @list.team = @team
     if @list.save
    redirect_to team_path(@team)
      else
        render 'teams/show', status: :unprocessable_entity
      end
  end


  def edit
  end
end
