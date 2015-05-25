class MatchController < ApplicationController

  def index

    @current_group
  end



  def show
    @current_match = Match.all.find_by_name(params[:match_name])
    @competition = @current_match.users
    @current_group = @current_match.group
    render "create"
  end

  def create
    binding.pry
    @competition = []
    @competition << current_user
    @competition << User.all.find_by_id(params[:matches][:member_id])
    @current_group = Group.find_by_id(params[:matches][:group_id].to_i)
    @current_group.matches.last.update(name: params[:matches][:match_name])
    @current_match = @current_group.matches.last
    @current_match.users << current_user
    @current_match.users << User.all.find_by_id(params[:matches][:member_id])
  
  end

  def new 
    @current_group = Group.find_by_id(params[:id].to_i)
    @current_group.matches.create(group_id: @current_group).save
  end

  def profile 
    binding.pry
  end

  def winner
    @winner =  User.all.find_by_id(params[:matches][:member])
    @winner.update(win: @winner.win+=1)
    binding.pry
  end
end

private 
