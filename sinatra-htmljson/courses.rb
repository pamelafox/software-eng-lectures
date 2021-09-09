class Courses

   def self.find(name)
     if name == "early-math"
       return ["counting", "addition", "subtraction"]
     elsif name == "computer-programming"
       return ["sql", "html-css", "javascript"]
     else
       return []
     end
   end

end
