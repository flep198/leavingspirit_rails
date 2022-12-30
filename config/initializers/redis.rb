require 'redis' # Version 3.2
require 'hiredis'
$redis = Redis.new(:driver => :hiredis)