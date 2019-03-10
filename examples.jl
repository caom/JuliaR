#---------------------------------------------
#Check the location of R in the system
ENV["R_HOME"]
#"libR.so" must be availble from R_HOME/lib
#---------------------------------------------
using RCall
#Ex1: plot Julia variable in R
x=rand(100)
R"hist($x, col='blue')"

#Ex2: save the plot
R"""
   pdf("test.pdf")
   hist($x, col="blue")
   dev.off()
"""
#xpdf test.pdf


#Ex3: manipulate Julia variable inside R
a=5
@rput a
#use $ into R environment
#R> b=a+1
@rget b




