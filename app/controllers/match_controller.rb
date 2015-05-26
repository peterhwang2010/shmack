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
    if params[:matches][:match_name] == nil
      match_id = params[:matches][:match_id]
      @competition = []
      @competition << User.all.find_by_name(Match.all.find_by_id(match_id).playerone)
      @competition << User.all.find_by_name(Match.all.find_by_id(match_id).playertwo)
      @current_group = Group.find_by_id(params[:matches][:group_id].to_i)
      @current_match = @current_group.matches.last
    else
      @competition = []
      @competition << current_user
      @competition << User.all.find_by_id(params[:matches][:member_id])
      @current_group = Group.find_by_id(params[:matches][:group_id].to_i)
      @current_group.matches.last.update(name: params[:matches][:match_name])
      @current_match = @current_group.matches.last
      @current_match.update(playerone: current_user.name)
      @current_match.update(playertwo: User.all.find_by_id(params[:matches][:member_id]).name)
      @current_match.users << current_user
      @current_match.users << User.all.find_by_id(params[:matches][:member_id])
    end
  
  end

  def new 
    @current_group = Group.find_by_id(params[:id].to_i)
    @current_group.matches.create(group_id: @current_group).save
  end

  def profile 
  end

  def winner
    @winner =  User.all.find_by_id(params[:matches][:member_id])
    @winner.update(win: @winner.win+=1)
    @current_match = Match.all.find_by_id(params[:matches][:match_id])
    if @current_match.users.first == @winner
      @loser = @current_match.users.last
    else
      @loser = @current_match.users.first
    end
    @loser.update(lose: @loser.lose+=1)
    @current_match.update(winner: @winner.name)
    binding.pry
    render "create"
  end
end

private 
