# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sphinx-tute_session',
  :secret      => '175991f933b7d4f3dcf815e63d4aaf08bd4a0c72c1e65ec4d5d4919124d4861ef5ac435251504fcb677274493d5c925581e0488a2a2898889de72282de7c7502'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
