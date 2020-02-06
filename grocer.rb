def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  n = 0
  while n < collection.length do
    if collection[n][:item] == name
      return collection[n]
    end
    n += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  n_c = [] #new cart
  n = 0
  while n < cart.length do
    n_c_i = find_item_by_name_in_collection(cart[n][:item], n_c) #new cart item
    if n_c_i != nil
      n_c_i[:count] += 1
    else
      n_c_i = {
        :item => cart[n][:item],
        :price => cart[n][:price],
        :clearance => cart[n][:clearance],
        :count => 1
      }
      n_c.append(n_c_i) #To add items to the new cart.
    end
    n += 1
  end
  return n_c 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
