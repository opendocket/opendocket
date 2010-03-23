# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_opendocket_session',
  :secret => '7920d1c7fd7d597a4bb3b4410b0b93766092280cbfd6301dff1c14a0b8038cd9d287c52c2f70c9a08b096a89d0ed1465b6baa5f1dba2afd36d82957cfce27a9b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
