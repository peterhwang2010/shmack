class MatchController < ApplicationController

  def index

    @current_group
  end



  def show
    binding.pry
  end

  def create
    @current_group = Group.find_by_id(params[:matches][:group_id].to_i)
    @current_group.matches.last.update(name: params[:matches][:match_name])
    @current_match = @current_group.matches.last
  end

  def new 
    @current_group = Group.find_by_id(params[:id].to_i)
    @current_group.matches.create(group_id: @current_group).save
  end

  def profile 
    binding.pry
  end
end

private 
