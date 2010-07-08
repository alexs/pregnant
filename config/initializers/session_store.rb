# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pregnant_session',
  :secret      => '3ae9ca170710590bfaea0ae3af1da4d43f2e88ae3632fa002c1a73895909e9429a94b47a4adab671d1f590ed379250754cdb2e5f26905328fa56df6d1c658bad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
