class RunLengthEncoding
   def self.encode(x)
   	 a = x.split("")
   	 b = a.length
   	 c = []
   	 d = []
   	 e = []
   	 g = []
   	 for i in 0..b
   	   if a[i] != a[i+1]
   	   	 c << i
   	   end
   	 end  
   	 f = c.length-1
   	 for i in 0..f
   	   if i == 0 
   	   	 e << c[i]+1
   	   else
   	     e << c[i]-c[i-1]
   	   end
   	 end
   	 c.each do |i|
   	 	d << a[i]
   	 end
   	 for i in 0..f
   	   if e[i] == 1
   	   	 e[i] = ""
   	   end
   	 end
     for i in 0..f
   	   g << (e[i].to_s + d[i].to_s)
   	 end
   	 g.join	
   end

   def self.decode(x)
   	 x.gsub(/(\d+)(.)/) { $2 * $1.to_i }
   end

end	













   	 # a.each do |a,i|
   	 #   if a[i] != a[i+1]
   	 #   	  i
   	 #   end
   	 # end