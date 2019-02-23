def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item_hash|
    item_hash.each do |item, info_hash|
      if new_hash[item]
        new_hash[item][:count] += 1
      else
        new_hash[item] = info_hash
        new_hash[item][:count] = 1
      end
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
