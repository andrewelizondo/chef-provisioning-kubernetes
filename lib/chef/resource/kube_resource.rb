# overall structure stolen from chef-provisioning-aws driver

class Chef::Resource::KubeResource < Chef::Resource::DataBagResource

  def initialize(*args)
    super
    @driver = run_context.chef_provisioning.current_driver
  end

end