# chef-provisioning-kubernetes

# Resources

1. kube_pod
2. kube_service

# Examples

```ruby
with_driver 'kubernetes'

machine_batch do # build out kubernetes nodes
    machine 'app' do
    end
    machine 'web' do
    end
    machine 'db' do
    end
end

kube_pod 'my-app' do # create a kubernetes pod structure
    nodes ['app','web','db']
end

kube_service 'backend' do # make a backend kubernetes service
    nodes ['db']
end
```