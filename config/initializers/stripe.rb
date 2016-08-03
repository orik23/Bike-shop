if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_vBjLZC3u8N8L48TR4NE21ZmA',
    :secret_key => 'sk_test_6FFY4dNql1I4teDowvejolCe'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]