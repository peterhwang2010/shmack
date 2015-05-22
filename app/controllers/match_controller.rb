class MatchController < ApplicationController
 attr_accessor :group_id

  def index

    @current_group
  end



  def show
  end

  def create
    binding.pry
    @current_group = Group.find_by_id(params[:id].to_i)
    
  end

  def new 
    binding.pry
    @current_group = Group.find_by_id(params[:id].to_i)
    @current_group.matches.create(group_id: @current_group).save

# binding.pry
  end
end

private 
