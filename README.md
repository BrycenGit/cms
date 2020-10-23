# _CMS_

_Version 1, 10/23/2020_

#### _An application that tracks Projects and their posts and comments._

### By: _**Brycen Bartolome**_

## Description

This project connects to a postgreSQL database. It stores information for project name, post, and comment. It authenticates and authorizes users using devise.

_With this project:_

- an admin will be able to view, add, update and delete projects.
- an admin will be able to view, add, update and delete posts.
- an admin will be able to view, add, update and delete comments.
- an admin will be able to view, add, update and delete skills.
- a user will be able to view posts and add comments.

## Setup & Installation

- Clone project to desktop <code>\$ git clone https://github.com/BrycenGit/cms.git</code>
- Move to project directory <code>\$ cd cms</code>
- Open project in vscode <code>\$ code .</code>
- In terminal run <code>\$ bundle install</code>
- In terminal run <code>\$ touch .env</code>
- In .env file add text PG={YOUR POSTGRESS PASSWORD WITHOUT BRACES OR QUOTES}
- In terminal run <code>\$ rake db:create</code>
- In terminal run <code>\$ rake db:migrate</code>
- In terminal run <code>\$ rails s</code>
- check the admin checkbos to give yourself admin abilities(this is only for ease of use for instructors)

## Known Bugs

Make sure you add .env file with text PG={YOUR POSTGRESS PASSWORD WITHOUT BRACES OR QUOTES}
i.e PG=password

## Technologies Used

- Ruby
- Rails
- Gems: rspec, pry, rspec, capybara, pg, dotenv, rails, puma, sass-rails, uglifier, ducktape, coffee-rails, bootstrap, turbolinks, jbuilder, bootstrap-sass, devise.
- devise

### License

Copyright (c) 2020 **Brycen Bartolome**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
