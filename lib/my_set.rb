# your code here
class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end
    
    def include?(value)
        @hash.has_key?(value)
    end

    # This method needs to add a value to the set if it isn't already present, and return the updated set. It also must have a O(1) runtime.
    def add(value)
        @hash[value] = true # add a value as a key on the hash
        self # return the updated set
    end

    # method removes a value from the set, and returns the updated set. It also must have a O(1) runtime.
    def delete(value)
        @hash.delete(value)
        self
    end
    
    # method simply needs to return the number of elements in the set. Again, we can use a built-in Hash method here
    def size
        @hash.size
    end



end