node.reverse_merge!(
  tig: {
    prefix:  "/usr/local",
    src:     "/usr/local/src",
    scheme:  "git",
  },
)

package "git"
package "gcc"
package "automake"
package "make"

case node[:platform]
when "debian", "ubuntu"
  package "libncursesw5-dev"
  package "pkg-config"
when 'redhat'
  package "ncurses-devel"
  package "which"
end

tig_dir = "#{node[:tig][:src]}/tig"

git tig_dir do
  repository "#{node[:tig][:scheme]}://github.com/jonas/tig.git"
  revision   "tig-#{node[:tig][:version]}" if node[:tig][:version]
end

[
  "make configure",
  "./configure",
  "make clean",
  "make prefix=#{node[:tig][:prefix]}",
  "make install prefix=#{node[:tig][:prefix]}",
].each do |command|
  execute command do
    cwd     tig_dir
    not_if "#{node[:tig][:prefix]}/bin/tig -v | grep #{node[:tig][:version]}" if node[:tig][:version]
  end
end
