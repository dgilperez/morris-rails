require 'benchmark'

def with_timer(note)
  print "#{note}... "
  time = Benchmark.realtime { yield }
  Process.waitall
  puts "Finished in #{time} seconds"
end

desc 'Sync assets from morris.js'
task :sync do
  unless Dir.exist?('vendor/repos/morris.js')
    with_timer('Initializing morris.js') do
      Process.spawn('git submodule init')
    end
    with_timer('Updating morris.js') do
      Process.spawn('git submodule update')
    end
  end

  with_timer('Updating Assets') do
    Process.spawn('cp vendor/repos/morris.js/morris.js vendor/assets/javascripts')
  end
  with_timer('Adding files') do
    Process.spawn('git add vendor/assets')
  end
end
