# RAILS

## Useful commands
```
rails s
```
start server

```
rails c 
```
rails console


## Database
to let rails create an empty databse: 
```
rake db:create
```
Will create development and test database

## Scaffold
scaffold: create the models, views and controllers for a new resource
```
rails g scaffold Person name:string age:integer gender:string
```

## Model
use to generate model 
rails generate model [model's name (singular)] [model's field:type]
```
rails g model Collection title:string
```
This will generate file (collection.rb) in app/models, migration file
related test file


## Controller
use to generate controller
rails g controller [controller's name(Plural)]
```
rails g controller Collections
```
This will generate file(collections_controller.rb) in app/controllers, [views folder in app/views], functional tests, view helper file, unit test for helper, coffeescript for controller, CSS for controller.

#### Association 
Using Active Record to state the association between model

* In collection model
```
class Collection < ActiveRecord::Base
  belongs_to :person
end
```
* In Person model
```
class Collection < ActiveRecord::Base
  has_many :collections
end
```

### Types of Associations
* belongs_to
* has_one
* has_many
* has_many :through
* has_one :through
* has_and_belongs_to_many


* has_many :through association is often used to set up many to many connection 
e.g User has many :comments through :photos
* has_and_belongs_to_many direct many to many connection with no intervening model

more infor : (https://guides.rubyonrails.org/v3.2.9/association_basics.html)


## Routes
edit routes in config/routes.rb

#### Home
```
root :to => "home#index"
```

```
resources :photos
```
will generate the CRUD path for photos
| HTTP | | Path | action|
| ---------| :--------:| :---------:| ------:|
| GET  | all photos | /photos | index |
| GET  | new photo form | /photos/new | new |
| POST | create new photo | /photos | create |
| GET  | get specific photo | /photos/:id | show |
| GET  | edit form for specific photo | /photos/:id/edit | edit |
| PUT  | update specific photo | /photos/:id | update |
| DELETE | delete a specific photo | /photos/:id |destroy |

#### Paths
* photos_path returns /photos
* new_photo_path returns /photos/new


able to create multiple resources at the same time

```
resources :photos, :persons :collections
```


### Singular Resources
```
match "profile" => "users#show"
```

### Nested Resources
Used when resources are children of other resources

```
resources :magazines do 
  resources :ads
end
```

| HTTP | | Path | action|
| ---------| :--------:| :---------:| ------:|
| GET | display ads for specifc magazine| /magazines/:magazine_id/ads | index |


## Migration

to generate migration file
```
rails g migration AddFieldToPersons
<!-- or -->
rails g migration AddFieldToPersons height:string
```
edit the migration file before migration

```
class AddFieldToPersons < ActiveRecord::Migration
  def change
    add_column :persons, :height, :string
    # add_column [table name], [field's name], [field type]
  end
end
```
to create a new table with multiple fields: 
```
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.reference :user
      t.timestamps
    end
  end
end
```

#### Supported methods
* add_column
* add_index
* change_column
* change_table
* create_table
* drop_table
* remove_column
* remove_index
* rename_column

#### Supported types
```
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:string
:text
:time
:timestamp
```

##### To migrate:
```
rake db:migrate
```

##### Roll Back
to rollback to the last migration
```
rake db:rollback
 <!-- or for several migration -->
rake db:rollback STEP=3
```

