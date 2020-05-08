# Welcome to Movie Review App

## Getting Started

1. Fork the repository first

2. Clone the repository:

        $ git clone git@github.com:<your-username>/rating_system.git

3. Change directory to `rating_system` and run `bundle` to install the gems specified in the Gemfile:

        $ cd rating_system
        $ bundle
        
4. Run migration and seed the db:
        
        $ rails db:migrate
        $ rails db:seed
        
5. Then, start the web server:
        
        $ bin/rails server

   Run with `--help` or `-h` for options.

6. Go to `http://localhost:3000` and login with following credentials:

        $ email: john.doe@gmail.com
        $ password: password
        
7. Now, you are able to `write reviews` to any movies you like. You can also `add`, `update`, and `delete` your movies from the list.
