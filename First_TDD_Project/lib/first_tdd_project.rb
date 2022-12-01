class Array
    def my_uniq
        uniqs = []
        self.each do |ele|
            uniqs << ele if !uniqs.include?(ele)
        end 

        uniqs
        # self.uniq
    end 
end 

def two_sum(array)
    ordered = []
    array.each_with_index do |ele1, i1|
        array.each_with_index do |ele2, i2|
            pairs = []
            if i2 > i1 && ele1 + ele2 == 0
                pairs << i1
                pairs << i2
            end
            ordered << pairs if !pairs.empty?
        end
    end
    
    ordered
end