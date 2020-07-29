# USPorts Hub

The USPorts Hub platform was developed by students Guilherme Tadashi Ishida and Lui Damianci as the final project for the discipline MAC0218 - Programming Techniques 2 (University of Sao Paulo). 
The motivation behind USPorts Hub is the difficulty in finding people to play sports outside of the competitive sphere. The purpose of this platform is to connect those people who want to play sports without necessarily joining a team, as well as allowing the individual reservation of CEPEUSP courts, which facilitates people's planning and organization.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purposes

### Prerequisites

The setup steps expect following tools installed on the system:

* Ruby v2.6.3

* Rails v6.0.3

* Database: PostgreSQL v9.3

* Git

### Database Connection:

* The database connection is specified on the config/database.yml file.

## Installing

#### 1. Clone the repository

```
git clone git@github.com:guiishida/SportsHub.git
```

#### 2. Create and setup the database

Run the following commands to create and setup the database.

```
rake db:create
rake db:setup
```

db:create --> creates the database for the current env

db:setup --> runs db:schema:load (loads the schema.rb file into to current env's database) and db:seed (populate the db with the data inside the db/seeds.rb file)

#### 3. Start the Rails Server

You can start the rails server using the command below.

```
rails server
```

And now you can visit the site with the URL http://localhost:3000

