require 'chef/provisioning/driver'
require 'chef/provisioning/convergence_strategy/install_cached'
require 'chef/provisioning/convergence_strategy/install_sh'
require 'chef/provisioning/convergence_strategy/no_converge'
require 'chef/provisioning/transport/ssh'
require 'chef/provisioning/machine/unix_machine'
require 'chef/provisioning/machine_spec'
require 'chef/provisioning/kubernetes_driver/version'
require 'chef/provisioning/kubernetes_driver/kubernetes_transport'

class Chef
  module Provisioning
    module KubernetesDriver
      class Driver < Chef::Provisioning::Driver

        def initialize(driver_url,config)
          super
        end

        attr_reader :connection

        def self.from_url(driver_url,config)
          [driver_url,config]
        end

        def allocate_machine(action_handler,machine_spec,machine_options)
        end

        def ready_machine(action_handler,machine_spec,machine_options)
        end

        def machine_for(machine_spec)
        end

        def destroy_machine(action_handler,machine_spec,machine_options)
        end

        def stop_machine(action_handler,machine_spec,machine_options)
        end


      end
    end
  end
end