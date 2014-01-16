# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Redress::Application.config.secret_key_base = '3b046d9f719f3431d0e56619101322894c8445f5bde018f0d3ec16ad0fbc323374cf19f90544eed486ca68b86497c281ff7b26913cf48326908fbd5da150e6c5'
