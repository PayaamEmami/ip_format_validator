# IpFormatValidator

This gem checks the format of an IP address.
The two requirements for the format of the IP address: 
- Must either be IPv4 or IPv6 format
- Must be a public IP address.

## Installation

Add this line to your application's Gemfile:

    gem 'ip_format_validator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ip_format_validator

## Usage

    # Using ActiveRecord
    class foo < ActiveRecord::Base
        validates :bar, ip_format: true
    end

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ip_format_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request