# TaggedObjectsLogger

Welcome to TaggedObjectsLogger Gem. This gem is created for the reason of logging error, warning, info, bug and unknown messages. All gem methods inherited from Ruby logger.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tagged_objects_logger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tagged_objects_logger

And then add this line to your environment configuration file:
```ruby
config.logger = TaggedObjectsLogger.instance
```

## Usage

This gem logs errors, info, bugs, warning, unknown messages and fatal errors.
This gem tags object by its class name and ID in the log file.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Truncourist/tagged_objects_logger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TaggedObjectsLogger project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Truncourist/tagged_objects_logger/blob/master/CODE_OF_CONDUCT.md).

[![Build Status](https://travis-ci.com/Truncourist/tagged_objects_logger.svg?branch=master)](https://travis-ci.com/Truncourist/tagged_objects_logger)
[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/Truncourist/tagged_objects_logger)
