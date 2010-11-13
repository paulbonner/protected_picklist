# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_protected_picklist_harness_session',
  :secret      => 'b25c935ba48b008e7ce26f5474a5fb4c84eecb999bee0d5132a7443ebc34744870141edbe5981ce687ceafb9161aa8bd99f2fc38e8b3204a6ebea748cf7bc6bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
