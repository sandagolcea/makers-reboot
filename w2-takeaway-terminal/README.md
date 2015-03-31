# Takeaway
Restaurant with takeaway orders and message confirmation - OOP & TDD practice

## CRC
Dish - name, quantity, price
Restaurant - has_menu, send_confirmation_message
Customer - name, phone, place order, add_dishes_to(order), pay
Order - list of dishes, total

##To run tests
`rake` or `rspec`

##User stories
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered