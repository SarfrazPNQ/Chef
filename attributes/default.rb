
if node['platform'] == 'ubuntu'
    default['package_name'] = 'nginx'
else
    default['package_name'] = 'httpd'
end