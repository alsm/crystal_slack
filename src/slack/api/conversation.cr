require "json"

class Slack::API::Channel
  JSON.mapping({
    id:          String,
    name:        String?,
    created:     Int64,
    creator:     String?,
    is_channel:  Bool?,
    is_group:    Bool?,
    is_im:       Bool?,
    is_archived: Bool?,
    is_general:  Bool?,
    is_member:   Bool?,
    is_private:  Bool?,
    is_shared:   Bool?,
    is_ext_shared: Bool?,
    is_org_shared: Bool?,
    is_user_deleted: Bool?,
    num_members: Int32?,
    topic:       Topic?,
    purpose:     Topic?,
    members:     Array(String)?,
  })

  struct Topic
    JSON.mapping({
      value:    String,
      creator:  String,
      last_set: Int64,
    })
  end
end
