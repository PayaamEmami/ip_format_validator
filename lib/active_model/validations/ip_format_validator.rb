=begin
Copyright (c) 2014 Payaam Emami

This file is part of ip_format_validator.

    ip_format_validator is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    ip_format_validator is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
=end

require 'active_model'

module ActiveModel
    module Validations
        #The purpose of the IpFormatValidator class is to check the format of an IP address.
        #The checks performed on the IP address are:
        #    - Must either be IPv4 or IPv6 format
        #    - Must be a public IP address
        class IpFormatValidator < ActiveModel::EachValidator
			# Validates the IP address
            def validate_each(record, attribute, value)
                record.errors.add(attribute, 'is not a valid IP address') unless good_format(value)
            end
            
            private
            # This regular expression checks to see if an IP address is public
            PUBLIC_IP = /^((?!^(192\.168|10\.|172\.1[6789]\.|172\.2[0-9]\.|172\.3[01]\.)).)*$/

            # Checks if the format is good for the IP address.
            # Returns true if IP has good format, Returns false if IP has bad format
            def good_format(value)
                if(Regexp.union(Resolv::IPv4::Regex, Resolv::IPv6::Regex) === value)
                    PUBLIC_IP === value
                end
            end
        end
    end
end