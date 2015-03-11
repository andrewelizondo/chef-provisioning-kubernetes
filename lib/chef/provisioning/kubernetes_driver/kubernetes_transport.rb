require 'chef/provisioning/transport'
require 'chef/http'
require 'chef/json_compat'

class Chef
  module Provisioning
    module KubernetesDriver
      class KubernetesTransport < Chef::Provisioning::Transport

        def initialize
          @server = 'localhost'
          @port = 8080
          @api_version = 'v1beta2'
          @url = "http://#{server}:#{port}/#{api_version}"
          @connection = client_for(url)
        end

        def client_for(url)
          begin
            Chef::HTTP.new(url)
          rescue
            Chef::Log.fatal " Unable to connect to server at #{url}"
          end
        end

        def node_exists?(node)
          begin
            Chef::Log.debug "Checking for existing node #{node}.."
            connection.get("/nodes/#{node}")
          rescue
            Chef::Log.debug "Node #{node} does not exist.."
            false
          end
        end

      end
    end
  end
end
