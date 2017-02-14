# # encoding: utf-8

# Inspec test for recipe sickle::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Check that the sickle installation directory was created successfully
describe file('/usr/local/sickle') do
  it { should be_directory }
end

# check that the tool was installed successfully
describe command('which sickle') do
  its(:exit_status) { should eq 0 }
  its('stdout') { should match('/usr/local/bin/sickle') }
end

# check that symlink works
describe file('/usr/local/bin/sickle') do
  it { should be_symlink }
end

# Check that sickle works
describe command('sickle --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should contain('version 1.33') }
end
