require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    initial_cookie = req.cookies['_rails_lite_app']
    if initial_cookie
      @cookie_info = JSON.parse(initial_cookie)
    else
      @cookie_info = {}
    end
  end

  def [](key)
    @cookie_info[key]
  end

  def []=(key, val)
    @cookie_info[key] = val
  end



  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    cookie = { path: '/', value: @cookie_info.to_json }
    res.set_cookie("_rails_lite_app", cookie)
  end
end
