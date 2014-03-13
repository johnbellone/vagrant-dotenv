# vagrant-dotenv
[![Gem Version](https://badge.fury.io/rb/vagrant-dotenv.png)](http://badge.fury.io/rb/vagrant-dotenv)
[![Build Status](https://travis-ci.org/johnbellone/vagrant-dotenv.png?branch=master)](https://travis-ci.org/johnbellone/vagrant-dotenv)
[![Dependency Status](https://gemnasium.com/johnbellone/vagrant-dotenv.png)](https://gemnasium.com/johnbellone/vagrant-dotenv)
[![Code Climate](https://codeclimate.com/github/johnbellone/vagrant-dotenv.png)](https://codeclimate.com/github/johnbellone/vagrant-dotenv)
[![Coverage Status](https://coveralls.io/repos/johnbellone/vagrant-dotenv/badge.png)](https://coveralls.io/r/johnbellone/vagrant-dotenv)

## Installation

```bash
vagraint plugin install vagrant-dotenv
```

## Usage

```rb
Vagrant.configure('2') do |config|
  config.dotenv.enabled = true
end
```

```bash
CHEF_ENV=test
HTTP_PROXY=$HTTP_PROXY
```

## Authors
- John Bellone - [@johnbellone][1] - (<[john.bellone.jr@gmail.com](mailto:john.bellone.jr+vagrant-dotenv@gmail.com)>)

[1]: https://twitter.com/johnbellone/
