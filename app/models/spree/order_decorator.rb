

Spree::Order.class_eval do 

def select_default_shipping
    create_proposed_shipments
    shipments.find_each &:update_amounts
    update_totals
  end

	
end

