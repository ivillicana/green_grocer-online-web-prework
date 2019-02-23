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
  coupons.each do |coupon|
    if cart[coupon[:item]]
      if coupon[:num] < cart[coupon[:item]][:count]
        cart[coupon[:item]][:count] -= coupon[:num]
        cart["#{coupon[:item]} W/COUPON"] = {
          :price => coupon[:cost],
          :clearance => cart[coupon[:item]][:clearance],
          :count => 1
        }
      elsif coupon[:num] == cart[coupon[:item]][:count]
        cart[coupon[:item]][:count] -= coupon[:num]
        cart["#{coupon[:item]} W/COUPON"] = {
          :price => coupon[:cost],
          :clearance => cart[coupon[:item]][:clearance],
          :count => 1
        }

      end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
