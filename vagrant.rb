Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
    sudo mkdir -p /usr/share/icons/hicolor/16x16/apps
    sudo mkdir -p /usr/share/icons/hicolor/32x32/apps
    sudo mkdir -p /usr/share/icons/hicolor/48x48/apps
    sudo mkdir -p /usr/share/icons/hicolor/128x128/apps
    sudo mkdir -p /usr/share/icons/hicolor/256x256/apps
  SHELL
end
