module DeleteAction
  def self.included(base)
    base.alias_method_chain :add_default_actions, :deleted_action
  end
  
  def add_default_actions_with_deleted_action
    add_default_actions_without_deleted_action
    add_default_action(member_methods, :get, :delete)
  end
end