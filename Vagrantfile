Vagrant.configure('2') do |config|
  config.dotenv.enabled = true
  config.vm.box = 'opscode-centos-6.5'
  config.vm.provision :shell, inline: 'echo $FOO $BAR $BAZ'
end
