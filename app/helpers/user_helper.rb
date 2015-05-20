module UserHelper
  def confirmed_logged_in?
    binding.pry
    current_user.id == params[:id].to_i
  end
end