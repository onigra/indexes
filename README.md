[![Build Status](https://travis-ci.org/onigra/indexes.svg?branch=master)](https://travis-ci.org/onigra/indexes) [![Coverage Status](https://coveralls.io/repos/onigra/indexes/badge.png)](https://coveralls.io/r/onigra/indexes) [![Code Climate](https://codeclimate.com/github/onigra/indexes.png)](https://codeclimate.com/github/onigra/indexes)


# Usage

## Array#Indexes

```rb
require 'indexes'

[1, 2, 3, 1, 2].indexes 1

#=> [0, 3]

["foo", "bar", "baz", "foo", "baz", "foo"].indexes "foo"

#=> [0, 3, 5]
```

## Array#slice_indexes

```rb
require 'indexes'

[1, 2, 3, 1, 2].slice_indexes 1

#=> [[1, 2, 3], [1, 2]]

["foo", "bar", "baz", "foo", "baz", "foo"].slice_indexes "foo"

#=> [["foo", "bar", "baz"], ["foo", "baz"], ["foo"]]
```
