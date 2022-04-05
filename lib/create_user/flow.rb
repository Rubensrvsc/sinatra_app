require 'dry/monads'
require_relative 'steps/create_user'

module Lib
  module CreateUser
    class Flow
      include Dry::Monads[:result, :do]

      def call
        validate_params = yield Steps::ValidateParams.new.call
        user = yield Steps::CreateUser.new.call

        Success(user)
      end
    end
  end
end