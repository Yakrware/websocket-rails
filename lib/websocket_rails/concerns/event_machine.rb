module WebsocketRails
  module Concerns
    module EventMachine
      extend ActiveSupport::Concern
  
      # Borrowed from Pubnub::Client
      def start_event_machine(options = nil)
        debug 'start_event_machine | starting EM in new thread'
        if defined?(Thin)
          debug 'start_event_machine | We\'re running on thin'
        else
          debug 'start_event_machine | We aren\'t running on thin'
        end
        if EM.reactor_running?
          debug 'start_event_machine | EM already running'
        else
          Thread.new { EM.run {} }
          Thread.pass until EM.reactor_running?
          debug 'start_event_machine | EM started in new thread'
        end
      end
    end
  end
end
