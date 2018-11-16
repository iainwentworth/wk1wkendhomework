def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
  pet_shop[:admin][:total_cash] += number
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pet_looking_for)
pets_found = []
  for each_pet in pet_shop[:pets]
    if each_pet[:breed] == pet_looking_for
      pets_found.push(each_pet[:name])
    end
  end
  return pets_found
end

def find_pet_by_name(pet_shop, pet_name_to_find)
  for each_pet in pet_shop[:pets]
    if each_pet[:name] == pet_name_to_find
      return each_pet
    end
  end
else return nil
end

def remove_pet_by_name(pet_shop, pet)
  for each_pet in pet_shop[:pets]
    if each_pet[:name] == pet
      each_pet.shift
    end
  end
end

def add_pet_to_stock(pet_shop, the_new_pet)
  pet_shop[:pets].push(the_new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, new_pet_to_add)
  customer[:pets].push(new_pet_to_add)
end

def customer_can_afford_pet(customer, new_pet)
 customer[:cash] >= new_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)

  for pets in pet_shop[:pets]
    if pets[:name] = pet

      if customer[:cash] >= pet[:price]

        customer[:pets].push(pet)

        customer[:cash] -= pet[:price]

        pet_shop[:admin][:total_cash] += pet[:price]

        pet_shop[:admin][:pets_sold] += 1
      end
    end

  end

end
