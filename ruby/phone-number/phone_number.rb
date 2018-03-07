class PhoneNumber
    def self.clean phone
        res = phone.gsub(/[^\d]/, '')

        # check for valid length
        if(res.length == 11)
            res = res[0] != "1" ? nil : res[1..res.length]
        else
            res = res.length != 10 ? nil : res
        end

        # check area code
        res = res.match(/^[2-9]/) ? res : nil if res != nil

        # check exchange code
        res = res[3].match(/^[2-9]/) ? res : nil if res != nil

        res
    end
end