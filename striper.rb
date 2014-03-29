require 'sinatra'
require 'stripe'

Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

get '/pay' do
  amount, token, email, callback = params.values_at(:amount, :token, :email, :cb)
  begin
    if email == 'test@fail.com'
      raise 'something is on fire'
    end

    charge = Stripe::Charge.create(
      card:        token,
      amount:      (amount.to_i * 100).round,
      currency:    'usd',
      description: email
    )
    result = {}
  rescue
    result = {error: $!.message}
  end
  "#{callback}(#{result.to_json});"
end

