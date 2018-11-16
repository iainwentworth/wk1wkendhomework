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
