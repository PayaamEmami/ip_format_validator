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

require "test_helper"

module ActiveModel
    module Validations
        class IpFormatValidatorTest < Test::Unit::TestCase
            def test_public_ip
                foo = IpTest.new(ip: '172.35.255.200')
                foo.validate_each(foo, :ip, '172.35.255.200')
                assert_equal 0 , foo.errors.messages.length
            end

            def test_private_ip
                bar = IpTest.new(ip: '192.168.200.255')
                bar.validate_each(bar, :ip, '192.168.200.255')
                assert_equal 1 , bar.errors.messages.length
            end

            def test_string_ip
                baz = IpTest.new(ip: 'hello world')
                baz.validate_each(baz, :ip, 'hello world')
                assert_equal 1 , baz.errors.messages.length
            end

            def test_empty_ip
                qux = IpTest.new(ip: '')
                qux.validate_each(qux, :ip, '')
                assert_equal 1, qux.errors.messages.length
            end
        end
    end
end