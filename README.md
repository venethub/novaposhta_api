# NovaposhtaApi

Simple Novaposhta API 2.0 Ruby client. API documentation by link https://devcenter.novaposhta.ua/docs/services/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'novaposhta_api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install novaposhta_api

## Setup

```
NovaposhtaApi.setup do |config|
  config.api_url = 'https://api.novaposhta.ua/v2.0/json/'
  config.api_key = 'KEY'
end
```

## Usage

Define API client:
```
client = NovaposhtaApi::Client.new
```

Cities:
```
client.cities.all
```

Settlements:
```
client.settlements.all
```

Warehouses:
```
client.warehouses.all
```

Create internet document:
```
client.internet_documents.create(params)
```

TODO

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/venethub/novaposhta_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/venethub/novaposhta_api/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NovaposhtaApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/venethub/novaposhta_api/blob/master/CODE_OF_CONDUCT.md).
