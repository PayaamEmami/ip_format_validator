=begin
Copyright (c) 2014 Payaam Emami & Asim Shakour

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

require "test/unit"
require "ip_format_validator"

class IpTest < ActiveModel::Validations::IpFormatValidator
    attr_accessor :ip
    attr_reader   :errors

    def initialize(ip)
        @ip = ip
        @errors = ActiveModel::Errors.new(self)
    end
end