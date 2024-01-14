# require_relative 'boot'

require 'rails/all'
# require_relative '../../app/models/spree/gateway/razorpay.rb'
# Rails.application.config.spree.payment_methods << Spree::Gateway::Razorpay

# Bundler.require(*Rails.groups)

Rails.application.config.after_initialize do
  Spree.config do |config|
    Rails.application.config.spree.payment_methods << Spree::Gateway::RazorpayGateway
    # Example:
    # Uncomment to stop tracking inventory levels in the application
    # config.track_inventory_levels = false
  end
end