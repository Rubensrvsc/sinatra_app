require 'dry/monads'
require './models'

module Lib
  module CreateUser
    module Steps
      class ValidateParams
        include Dry::Monads[:result]
        
        def call(attrs)
          if attrs['name'] != ''
            return Success(attrs)
          end

          Failure('Name empty')
        end
      end
    end
  end
end