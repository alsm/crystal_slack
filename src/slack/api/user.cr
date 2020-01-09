require "json"

class Slack::API::User
  JSON.mapping({
    id:                  String,
    name:                String,
    deleted:             Bool,
    color:               String?,
    profile:             Profile,
    is_admin:            Bool?,
    is_owner:            Bool?,
    is_primary_owner:    Bool?,
    is_restricted:       Bool?,
    is_ultra_restricted: Bool?,
    has_2fa:             Bool?,
    has_files:           Bool?,
  })

  def initialize(@id, @name, @deleted, @profile)
  end

  class Profile
    JSON.mapping({
      first_name: String?,
      last_name:  String?,
      real_name:  String,
      email:      String?,
      skype:      String?,
      phone:      String?,
      image_24:   String?,
      image_32:   String?,
      image_48:   String?,
      image_72:   String?,
      image_192:  String?,
    })

    def initialize(@real_name, @email = nil)
    end
  end
end
