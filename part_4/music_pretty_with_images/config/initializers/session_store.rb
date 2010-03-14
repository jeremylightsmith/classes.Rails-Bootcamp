# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_music_partial_session',
  :secret      => '34ffed0291f4fe9d28939ba68d25b5876119d8aa9c0f309fabbbe769cc7f12e5756ed919b47ae973593ff8a4fd7cd2dcd01b8f28df2990b713d9463a61e5dc02'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
