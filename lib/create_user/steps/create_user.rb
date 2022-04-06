require 'dry/monads'
require './models'

module Lib
  module CreateUser
    module Steps
      class CreateUser
        include Dry::Monads[:result]

        def call(attrs)
          user = User.create(
            name: attrs['name'],
            password: attrs['password']
          )

          Success(user)
        end
      end
    end
  end
end