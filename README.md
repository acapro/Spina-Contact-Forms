# SpinaContactForms
This will add a contact form builder in spina. You can create form elements in the backend that will populate the form in the frontend.

Please update to the latest version, anything under '0.1.2' will NOT work.

## Installation
Add this line to your application's Gemfile:

For latest master branch
```ruby
gem 'spina_contact_forms', git: 'https://github.com/acapro/Spina-Contact-Forms'
```
or
```ruby
gem 'spina_contact_forms'
```

And then execute:
```bash
$ bundle
```

Make sure your mail settings are setup correctly.

Add the following to `config/secrets.yml`
```
contact_form_from_email: contact_form@yourdomain.com
```

The email will be sent to whatever current_account.email returns, so make sure an email address is saved in the database under account settings.


Add the following to your theme's config file (config/initializers/themes/theme_name.rb)
```ruby
theme.plugins = ['ContactForm']
```

Copy and run the migrations, make sure to do this when upgrading as well, since new migragtions could be added.
```bash
rake spina_contact_forms_engine:install:migrations
rake db:migrate
```

## Usage
In your view, call `<%= spina_contact_form%>`
That's it! Use Mailcatcher for local development, and test it out.

Contact Forms are scoped to the current_theme, so any changes to the theme name or setting a different theme for the account will cause a separate contact form to be loaded.

## Contributing
Contributions are welcome! It is still in an early stage, and more features are required. Fork it, and create a pull request.

## Roadmap
* Currently only text inputs and text areas are supported, select dropdowns, check boxes and radio buttons still needed
* Internationalization needed
* Create an install generator, which copies the migrations and view files

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
