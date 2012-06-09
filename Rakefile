require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['spec/lib/cj_client/*_spec.rb']
  t.verbose = true
end

task :default => :test