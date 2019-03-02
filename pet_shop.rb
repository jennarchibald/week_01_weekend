
def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(petshop)
  return petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, amount)
  petshop[:admin][:total_cash] += amount
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, pets_sold)
    petshop[:admin][:pets_sold] += pets_sold
end

def stock_count(petshop)
  return petshop[:pets].length
end

def pets_by_breed(petshop, breed)
  pets = []
  for pet in petshop[:pets]
    pets.push(pet) if (pet[:breed] == breed)
  end
  return pets
end

def find_pet_by_name(petshop, name)
  for pet in petshop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(petshop, name)
  for pet in petshop[:pets]
    if pet[:name] == name
      petshop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(petshop, new_pet)
  petshop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end


#optional


def customer_can_afford_pet(customer, pet)
  customer[:cash] > pet[:price]
end


def sell_pet_to_customer(petshop, pet, customer)
  if petshop[:pets].include?(pet) && customer[:cash] >= pet[:price]
    customer[:pets].push(pet)
    petshop[:admin][:pets_sold] += 1
    petshop[:admin][:total_cash] += pet[:price]
    customer[:cash] -= pet[:price]
  end
end
