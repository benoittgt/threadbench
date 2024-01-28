queue_requests false # The reactor will injest more traffic than it can handle, leading to high p99 and unfairly penalizing 1 thread setups

# TODO: find a better way to avoid warmup requests from being counted
# on_booted do
#   # From https://youtu.be/9nvX3OHykGQ?t=1475
#   puts "🦑 Starting vernier profiler from on_booted..."
#   $collector = Vernier::Collector.new(:wall)
#   $collector.start
# end

# at_exit do
#   puts "On at_exit from puma.rb"
#   pp $collector
#   if $collector
#     puts "🦑 Vernier collector is running, stopping..."
#     result = $collector.stop
#     File.write("profile.json", Vernier::Output::Firefox.new(result).output)
#     $collector = nil
#   end
# end
