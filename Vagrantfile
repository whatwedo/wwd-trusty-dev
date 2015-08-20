# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #Set box
  config.vm.box = "whatwedo/wwd-trusty-dev"

  #Add private network
  config.vm.network "private_network", type: "dhcp"

  #Add home directory as synced folder
  config.vm.synced_folder ".", "/vagrant",
    :nfs => !Vagrant::Util::Platform.windows?

  #Add SSH key
  config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.ssh/id_rsa")}' > '/home/vagrant/.ssh/id_rsa'"
  config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.ssh/id_rsa.pub")}' > '/home/vagrant/.ssh/id_rsa.pub'"

  config.vm.provider "virtualbox" do |vb|

    #Get all CPU cores and a quarter of available RAM
    host = RbConfig::CONFIG['host_os']
    if host =~ /darwin/
      cpus = `sysctl -n hw.ncpu`.to_i
      # sysctl returns Bytes and we need to convert to MB
      mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 4
    elsif host =~ /linux/
      cpus = `nproc`.to_i
      # meminfo shows KB and we need to convert to MB
      mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 4
    else # sorry Windows folks, I can't help you
      cpus = 2
      mem = 2028
    end
  
    #Set RAM and CPU
    vb.customize ["modifyvm", :id, "--memory", mem]
    vb.customize ["modifyvm", :id, "--cpus", cpus]

    #Allow symlink on shared folders
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]

    #Share VPN from Host
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  #Install dependencies
  #config.vm.provision "shell",
  #    inline: "sudo sh /vagrant/vm-init/install.sh"

end