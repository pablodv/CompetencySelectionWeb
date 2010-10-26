# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lineasestudio_session',
  :secret      => '7f769618d70c208264c5ba3a85d80168d8e78d1f7bdd3ece7f27b556397f412fb60a98996eafe7b58b7307f42c28b7e3d5b593d00b126c1b81b58f9ab8c838b1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
