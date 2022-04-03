require 'dry/monads'

module Lib
  module CreateUser
    module Steps
      class CreateUser
        include Dry::Monads[:result]

        def call
        end
      end
    end
  end
end