include_recipe "rbenv::vagrant"

include_recipe "mysql::server"

package "libqt4-dev"
package "libicu48"
package "vim"
package "xvfb"

execute "adding DISPLAY var in order to run specs" do
  command "echo 'DISPLAY=localhost:1.0' >> /home/vagrant/.bashrc"
end
