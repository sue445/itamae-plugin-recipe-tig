describe file("#{node[:tmux][:prefix]}/bin/tig") do
  it { should be_file }
  it { should be_executable }
end
