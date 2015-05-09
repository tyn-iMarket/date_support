# DateSupport

Get Date of the nth week of the month and day of the week you want.

## Usage

``` ruby
date = Date.new(2015, 5, 13)

# Second week of the month and same day of the week
date.nth_week_of_month(2)  # => <Date: 2015-05-06>

# Same week of the month and Friday of the week
date.day_to(:friday)  # => <Date: 2015-05-15>

# Fourth week of the month and Saturday of the week
date.nth_week_of_month(2).day_to(:saturday)  # => <Date: 2015-05-23>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date_support'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_support

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/date_support/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
