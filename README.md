Store Management App
==

This app is a simple Rails application utilizing a `many_to_many` relationship between two models (`Products` and `Categories`) with a through-table called `Associations` that allows a Product to have many categories (to which it belongs) and for a Category to have many products.  This is one of the first uses of `collection_check_boxes`.

The following is the assignment used to build the app:

Your company needs an app to manage a list of products in your store. Here are the features we need:

1)  RESTfully read, create, edit, update and delete products.

2)  RESTfully read, create, edit, update and delete categories.

3)  Products should be in many categories, and categories should have many products.

4)  The manager should be able to see all categories.

5)  The manager should be able to go to a category's page and view all the products in that category.

6)  The manager should be able to go to a product's page and view all the categories that product is in.

7)  From a product's edit form page, he should also be able to add and remove category memberships for that product.

8)  Build this new functionality starting from a blank rails app. Try to use migrations as much as possible to get used to modifying your models. Also, don't forget to add assocations to the models.


It will be much easier to get started if you seed some data. Try adding some seed data to db/seeds.rb then run rake db:seed

HINT: You will need 2 models plus a through table since this is a many to many relationship.

HINT: Look at the db/seeds.rb file from the lesson to get an idea of how to seed your models.

BONUS: Make it pretty.

BONUS: Add validation to your models. Try validating that a product name or category name exists before adding it to the db. Add any other validations that make sense.

EXTRA BONUS: Add authentication to the site.
