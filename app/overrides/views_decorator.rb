Deface::Override.new(
  virtual_path: 'spree/checkout/_payment',
  name: 'add_razorpay_payment_confirmation',
  insert_after: '[data-hook="checkout_payment_step"]',
  partial: 'spree/razorpay/payment_confirmation_modal'
)