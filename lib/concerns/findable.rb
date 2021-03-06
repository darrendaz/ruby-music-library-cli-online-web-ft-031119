# Why do we have two of these modules in different places?

module Concerns
    module Findable
        def find_by_name(name)
            self.all.detect{ |s| s.name == name}
        end

        def find_or_create_by_name(name)
            self.find_by_name(name) || self.create(name)
        end
    end
end