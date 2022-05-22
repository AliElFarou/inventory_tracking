# README

Running on Replit

* Click the following link: https://replit.com/@alielfarou/inventorytracking 
* Press the green "run" command button at the top of the screen.
* The web app should load in the top right window of the internet browser
* For optimal results, open the application in its own tab.

Using the App

* Once the app has loaded, you will be redirected to the "Warehouse" Index.
* From here you can create warehouses. Warehouses store information about the location where inventory is stored.
* You can also click the "view all items" button, which will redirect to the items index.
* From the items index, you can create new items and assign them to 0, 1, or many of the warehouses you previously created.Items store information about a product. They are not physical items. Physical items are represented through the join table warehouse_items, which stores the item_id and the warehouse_id it’s associated with.
* Clicking the item/warehouse in the table will allow for Reading, Updating, and Destroying the object.

* The Warehouse model contains a uniqueness validation on the 'location' column. In theory, a company may have several warehouses, but each location/address would be unique. 
* The Item model contains a uniqueness validation on the 'name' column, since there wont be more than one of the same product being offered.
