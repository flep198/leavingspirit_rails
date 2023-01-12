class ApplicationController < ActionController::Base

    def current_user
      super || guest_user
    end

    private

    def guest_user
     User.find(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id])
    end

    def create_guest_user
      u = User.create(:email => "guest_#{Time.now.to_i}#{rand(99)}@example.com")
      u.save(:validate => false)
      u
    end

end
