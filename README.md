# CombinationCalc

Pattern table generator from YAML.

## Installation

```
$ curl -O https://github.com/tk-hamaguchi/combination_calc/raw/master/dist/combination_calc-latest.gem
$ gem install combination_calc-latest.gem
```

## Usage

1. Create pattern with YAML(ex. pattern.yml)
``` yaml
abc:
 - A
 - B
 - C

bool:
 - true
 - false

value:
 - 1
 - 10
 - 100
 - 1000
 - 1000000
```
2. Execute with YAML path
```
$ combination_calc pattern.yml
```
3. pattern table appears
```
| abc | bool  |   value |
| A   | true  |       1 |
| A   | true  |      10 |
| A   | true  |     100 |
| A   | true  |    1000 |
| A   | true  | 1000000 |
| A   | false |       1 |
| A   | false |      10 |
| A   | false |     100 |
| A   | false |    1000 |
| A   | false | 1000000 |
| B   | true  |       1 |
| B   | true  |      10 |
| B   | true  |     100 |
| B   | true  |    1000 |
| B   | true  | 1000000 |
| B   | false |       1 |
| B   | false |      10 |
| B   | false |     100 |
| B   | false |    1000 |
| B   | false | 1000000 |
| C   | true  |       1 |
| C   | true  |      10 |
| C   | true  |     100 |
| C   | true  |    1000 |
| C   | true  | 1000000 |
| C   | false |       1 |
| C   | false |      10 |
| C   | false |     100 |
| C   | false |    1000 |
| C   | false | 1000000 |
```

## Contributing

1. Fork it ( https://github.com/tk-hamaguchi/combination_calc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
