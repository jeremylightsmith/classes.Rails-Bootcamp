# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quotes_session',
  :secret      => 'd7c8b707a2fd8220b62c0bfc5614dce44db7e32413497f32f817ea3178e485ad473b1921c3f277157db47a371b1e7d438ee642f9c71761fa248d3275d0a649e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
