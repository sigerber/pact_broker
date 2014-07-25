require_relative 'base_decorator'
require_relative 'pact_pacticipant_decorator'

module PactBroker

  module Api

    module Decorators

      class TagDecorator < BaseDecorator

        property :createdAt, getter: lambda { |_|  created_at.xmlschema }
        property :updatedAt, getter: lambda { |_| updated_at.xmlschema }

        link :self do | options |
          tag_url(options[:base_url], represented)
        end

      end
    end
  end
end