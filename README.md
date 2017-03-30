# SpinaContactForms
This will add a contact form for

## Installation
Add this line to your application's Gemfile:

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

Add the following to your theme's config file (config/initializers/themes/theme_name.rb)
```ruby
theme.plugins = ['ContactForm']
```

## Usage
In your view, call `<%= spina_contact_form%>`

## Contributing
Contributions are welcome! It is still in an early stage, and more features are required. Fork it, and create a pull request.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
