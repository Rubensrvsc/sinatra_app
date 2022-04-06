require 'dry/monads'
require_relative 'steps/create_user'
require_relative 'steps/validate_params'

module Lib
  module CreateUser
    class Flow
      include Dry::Monads[:result, :do]

      def call(attrs)
        validate_params = yield Steps::ValidateParams.new.call(attrs)
        user = yield Steps::CreateUser.new.call(validate_params)

        user.success? ? user.value! : user.failure
      end
    end
  end
end