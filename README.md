# Tapdance

Tapdance makes `Object#tap` dance with `nil`.

## What?!

I mean it totally dances around `nil` and doesn't execute a block argument
passed to `nil#tap` so that you don't have to check for `nil` inside of the
block passed to `tap`.

## Is this a good idea?

Nope.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tapdance'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install tapdance
```

## Usage

Instead of writing this Ruby:

```ruby
jedi = nil
jedi.tap do |yoda|
  yoda && yoda.height = 1
end
=> nil
```

Or this Ruby on Rails ([ActiveSupport][activesupport-try]):

```ruby
jedi = nil
jedi.tap do |yoda|
  yoda.try(:height, 1)
end
=> nil
```

To avoid this:

```ruby
jedi = nil
jedi.tap do |yoda|
  yoda.try(:height, 1)
end
NoMethodError: undefined method `height=' for nil:NilClass
```

You can now write this instead:

```ruby
jedi = nil
jedi.tap do |yoda|
  yoda.height = 1
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/olivierlacan/tapdance/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[activesupport-try]: http://api.rubyonrails.org/classes/Object.html#method-i-try
