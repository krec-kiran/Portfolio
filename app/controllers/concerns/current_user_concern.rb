module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    # OpenStruct.new(name:"Guest User",
    #               first_name: "Guest",
    #               last_name: "User",
    #               email:"guest@welcome.com")

    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@welcome.com"
    guest
  end
end
