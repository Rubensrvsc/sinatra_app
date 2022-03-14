helpers do
  def login(name, password)
    hmac_secret = ''
    data = {
      name: name,
      password: password
    }
    user = User.find_by(name: name, password: password).first
    return JWT.encode data, hmac_secret, 'HS256' if user
    return StandardError.new "User not found" if !user
  rescue
    StandardError.new "User not found"
  end

  def current_user(token)
    hmac_secret = ''
    decode_token = JWT.decode token, hmac_secret, true
    user = User.find_by(name: decode_token[0]['name'], password: decode_token[0]['password']).first
    user if user
  rescue
    StandardError.new "User not found"
  end

  def login_required(token)
    raise StandardError.new "Token not found" if !token == true
    current_user(token)
  end
end
