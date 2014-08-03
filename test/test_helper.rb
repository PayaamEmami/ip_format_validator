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