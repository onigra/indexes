# Array#slice_by_indexes

[![Build Status](https://travis-ci.org/onigra/slice_by_indexes.svg?branch=master)](https://travis-ci.org/onigra/slice_by_indexes) [![Coverage Status](https://coveralls.io/repos/onigra/slice_by_indexes/badge.png)](https://coveralls.io/r/onigra/slice_by_indexes) [![Code Climate](https://codeclimate.com/github/onigra/slice_by_indexes.png)](https://codeclimate.com/github/onigra/slice_by_indexes)

## Installation

Add this line to your application's Gemfile:

```
gem 'slice_by_indexes'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install slice_by_indexes
```

## Usage

## Array#indexes

```rb
require 'indexes'

[1, 2, 3, 1, 2].indexes 1

#=> [0, 3]

["foo", "bar", "baz", "foo", "baz", "foo"].indexes "foo"

#=> [0, 3, 5]

["foo", 1, 2, "foo", 3, "foo"].indexes { |i| i.class == String }

#=> [0, 3, 5]
```

## Array#slice_by_indexes

```rb
require 'indexes'

[1, 2, 3, 1, 2].slice_by_indexes 1

#=> [[1, 2, 3], [1, 2]]

["foo", "bar", "baz", "foo", "baz", "foo"].slice_by_indexes "foo"

#=> [["foo", "bar", "baz"], ["foo", "baz"], ["foo"]]

["foo", 1, 2, "foo", 3, "foo"].slice_by_indexes { |i| i.class == String }

#=> [["foo", 1, 2], ["foo", 3], ["foo"]]
```

## Contributing

1. Fork it ( http://github.com/onigra/slice_by_indexes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
