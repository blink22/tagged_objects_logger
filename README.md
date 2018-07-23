[![Build Status](https://travis-ci.com/Truncourist/tagged_objects_logger.svg?branch=master)](https://travis-ci.com/Truncourist/tagged_objects_logger)
[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/Truncourist/tagged_objects_logger)

# TaggedObjectsLogger
By [Blink22](http://www.blink22.com/).

TaggedObjectsLogger is a flexible logging solution for Rails based on the Ruby logger. It extends the functionality of the logger by adding the ability to log errors, warnings, info, bugs and unknown messages in a custom format efficiently and easily.

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
config.logger = TaggedLogger.instance
```

## Usage

After configuring environment logger variable with TaggedLogger instance you can use This gem to log errors, info, bugs, warning, unknown messages and fatal errors.
This gem tags object by its class name and ID in the log file.
Log file created in log/[Rails environment].log.
Log path could be customized by passing log path while intializing TaggedLogger instance ex: TaggedLogger.instance(Log_file_path)
An Example of Log file content:
```
# Logfile created on 2018-07-18 14:59:55 +0200 by logger.rb/61378
I, [2018-07-18T14:59:55.698298 #20025]  INFO -- : [TestObject_13]: [TestObject_14]: [TestObject_15]: This is My Info Message

E, [2018-07-18T14:59:55.700376 #20025] ERROR -- : [TestObject_16]: [TestObject_17]: [TestObject_18]: This is My Error Message

D, [2018-07-18T14:59:55.704728 #20025] DEBUG -- : [TestObject_19]: [TestObject_20]: [TestObject_21]: This is My Debug Message

F, [2018-07-18T14:59:55.706860 #20025] FATAL -- : [TestObject_22]: [TestObject_23]: [TestObject_24]: This is a Fatal error

A, [2018-07-18T14:59:55.708679 #20025]   ANY -- : [TestObject_25]: [TestObject_26]: [TestObject_27]: This is unknown message

W, [2018-07-18T14:59:55.710540 #20025]  WARN -- : [TestObject_28]: [TestObject_29]: [TestObject_30]: This is just a warning
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Truncourist/tagged_objects_logger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TaggedObjectsLogger project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/blink22/tagged_objects_logger/blob/master/CODE_OF_CONDUCT.md).
