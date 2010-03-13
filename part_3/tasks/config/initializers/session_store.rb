# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tasks_session',
  :secret      => '4fd15bfd913f9ef4a902f207b6b50a1dd866b91b364d9863c789894fc4537fbbb3302a06394f23d93d4a4342f32557a049cf7b94ac4c092ca0714bc219bd43dd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
