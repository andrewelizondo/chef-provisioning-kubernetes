require 'chef/provisioning/kubernetes_driver/driver'

Chef::Provisioning.register_driver_class('kubernetes', Chef::Provisioning::KubernetesDriver::Driver)