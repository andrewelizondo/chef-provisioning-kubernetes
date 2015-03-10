require 'chef/provider/lwrp_base'

class Chef::Provider::KubeProvider < Chef::Provider::LWRPBase
  use_inline_resources

  def whyrun_supported?
    true
  end

  def new_driver
    run_context.chef_provisioning.driver_for(new_resource.driver)
  end
end