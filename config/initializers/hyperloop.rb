# config/initializers/hyperloop.rb
# If you are not using ActionCable, see http://ruby-hyperloop.io/docs/models/configuring-transport/
Hyperloop.configuration do |config|

  config.compress_system_assets = false
  config.transport = :action_cable
  #config.import 'reactrb/auto-import'
  config.prerendering = :off
  #config.import 'client_and_server'
end

