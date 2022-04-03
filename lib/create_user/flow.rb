require 'dry/monads'

module Lib
  module CreateUser
    class Flow
      include Dry::Monads[:result, :do]

      def call
      end
    end
  end
end