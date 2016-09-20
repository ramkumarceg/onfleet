module Onfleet
  module Actions
    module Get
      module ClassMethods
        def get id, params={}
          api_url = "#{self.api_url}/#{id}"
          response  = Onfleet.request(api_url, :get, params)
          Util.constantize("#{self}").new(response)
        end
      end

      def self.included base
        base.extend(ClassMethods)
      end
    end
  end
end
