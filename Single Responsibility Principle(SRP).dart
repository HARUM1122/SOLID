/// THIS IS A BAD APPROACH BECAUSE THIS CLASS HAS MULTIPLE RESPONSIBILITIES
class DiscordServerManager {
  void createRole() {}
  void updateRole() {}
  void deleteRole() {}
  void createChannel() {}
  void updateChannel() {}
  void deleteChannel() {}
}


/// THIS IS A GOOD APPROACH AND ADHERES TO THE SINGLE RESPONSIBILITY PRINCIPLE

class RolesManager {
  void createRole() {}
  void updateRole() {}
  void deleteRole() {}
}

class ChannelsManager {
  void createChannel() {}
  void updateChannel() {}
  void deleteChannel() {}
}
