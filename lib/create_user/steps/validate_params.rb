require 'dry/monads'

module Lib
  module CreateUser
    module Steps
      class ValidateParams
        include Dry::Monads[:result]
        
        def call
        end
      end
    end
  end
end