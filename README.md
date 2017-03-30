# SpinaContactForms
This will add a contact form builder for spina. You can create form elements in the backend, this will populate the from in the frontend.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'spina_contact_forms', git: 'https://github.com/acapro/Spina-Contact-Forms'
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
That's it! Use Mailcatcher for local development, and test it out.

## Contributing
Contributions are welcome! It is still in an early stage, and more features are required. Fork it, and create a pull request.

## Roadmap
* Currently only text inputs and text areas are supported, select dropdowns, check boxes and radio buttons still needed
* Internationalization needed

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
