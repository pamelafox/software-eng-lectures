class Courses

   def self.find(name)
     if name == "early-math"
       return ["counting", "addition", "subtraction"]
     end
     return []
   end

end
