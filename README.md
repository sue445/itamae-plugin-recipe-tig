# Itamae::Plugin::Recipe::Tig

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to install [tig](https://github.com/jonas/tig)

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-tig.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-tig)
[![test](https://github.com/sue445/itamae-plugin-recipe-tig/actions/workflows/test.yml/badge.svg)](https://github.com/sue445/itamae-plugin-recipe-tig/actions/workflows/test.yml)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-tig'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-tig

## Usage

### Recipe
```ruby
# recipe.rb

# itamae v1.5.2 or later
include_recipe "tig"

# older
include_recipe "tig::default"
```

### Node
```yml
# node.yml
tig:
  # tig prefix (default: /usr/local)
  prefix: /usr/local
  
  # source dir (default: /usr/local/src)
  src: /usr/local/src
  
  # specify scheme to use in git clone (default: https)
  scheme: https

  # install version (default: HEAD)
  version: 2.1.1
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing
requirements [Docker](https://www.docker.com/)

```sh
bundle exec itamae docker --node-yaml=spec/recipes/node.yml spec/recipes/install.rb --image=centos:7 --tag itamae-plugin:latest
DOCKER_IMAGE=itamae-plugin:latest bundle exec rspec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/itamae-plugin-recipe-tig.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

