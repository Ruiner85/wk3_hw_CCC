require_relative('models/ticket')
require_relative('models/film')
require_relative('models/customer')

require('pry-byebug')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

customer1 = Customer.new({
  'name' => 'Paul',
  'funds' => 25
  })
customer1.save()

customer2 = Customer.new({
  'name' => 'Colin',
  'funds' => 50
  })
customer2.save()

customer3 = Customer.new({
  'name' => 'Andrew',
  'funds' => 40
  })
customer3.save()

customer4 = Customer.new({
  'name' => 'Rob',
  'funds' => 35
  })
customer4.save()

film1 = Film.new({
  'title' => 'Haunting of Hill House',
  'price' => 7
  })
film1.save()

film2 = Film.new({
  'title' => 'House of Wax',
  'price' => 5
  })
film2.save()

film3 = Film.new({
  'title' => 'Pit and the Pendulum',
  'price' => 3
  })
film3.save()

film4 = Film.new({
  'title' => 'The Abominable Dr. Phibes',
  'price' => 2
  })
  film4.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film2.id
  })
ticket2.save()

ticket3 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id
  })
ticket3.save()

ticket4 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film3.id
  })
ticket4.save()

ticket5 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film4.id
  })
ticket5.save()

ticket6 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film4.id
  })
ticket6.save()

ticket7 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film4.id
  })
ticket7.save()

ticket8 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film4.id
  })
ticket8.save()

binding.pry
nil
