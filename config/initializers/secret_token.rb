# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = 'c831c52f7c39714a748f96dc658445f51a3a5a53db1ec617ef33355497ad4d1d61d59db5df5b0887f64d0dd3eba9c38949786b80e8aafffe3c24d49a363289c9'

require 'securerandom'

def secure_token
	t_file = Rails.root.join('.secret')
	if File.exists?(t_file)
		#Use existing token file
		File.read(t_file).chomp
	else
		#Generate a new token and store in token_file
		token = SecureRandom.hex(64)
		File.write(t_file, token)
		token
	end
end