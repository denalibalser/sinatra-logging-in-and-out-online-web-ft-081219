class Helpers
  def self.current_user(session)
    @user = User.find_by(user_id: params[:user_id])
    if @user
      session[:user_id] = @user.id
      @user
    end
  end

  def self.is_logged_in?(session)
    session[:user_id] != nil
    
  end
end
