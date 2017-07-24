

Spree::Order.class_eval do 

# def select_default_shipping
#     create_proposed_shipments
#     shipments.find_each &:update_amounts
#     update_totals
#   end


checkout_flow do
  

remove_checkout_step :address
   
   #   go_to_state :delivery
      go_to_state :payment, if: ->(order) { order.payment_required? }
      go_to_state :confirm, if: ->(order) { order.confirmation_required? }
      go_to_state :complete
      remove_transition from: :delivery, to: :confirm
  end


	
end

