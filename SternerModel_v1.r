## Plankton - Zooplankton stoichiometric model 
## Sterner, R.W. 1990. The Ratio of Nitrogen to Phosphorus Resupplied by Herbivores: 
##  Zooplankton and the Algal Competitive Arena. The American Naturalist 136(2): 209–229.
##
## Code was compiled by Paul Julian
## contact infor: pjulian@ufl.edu

#Clears Everything...start fresh.
rm(list=ls(all=T));cat("\014");dev.off()

## Simple model
# Basal metabolism (based on equation #1 of Sterner 1990)
dNdt = function(t,y,p){ 
  with(as.list(c(y,p)),{
    algae.graze=phi1*P.pool
    zoo.mort=phi3*Z.pool
    zoo.nut.release=m*Z.pool
    phyto.uptake=mu*D.pool
    
    
    dZ = algae.graze-zoo.nut.release-zoo.mort;#does not account for non-algal foods
    dP = phyto.uptake-algae.graze;#does not account for non-grazing losses (i.e. phyto mortality)
    dD = zoo.nut.release-phyto.uptake;#does not account for non-zooplankton nutrient sources
    list(c(dZ,dP,dD))
  })
}

params=c(phi1=0.2,phi2=1,phi3=0.1,mu=0.5,m=0.1,a=0);# units per hour
# phi1=zooplankton grazing rate, 
# phi2=resupply rate, 
# phi3=loss rate from zoo
# mu=phytoplankton uptake rate
# m=basal metabolic release rate
# a=accumulation efficieny
ystart = c(D.pool=2,Z.pool=0,P.pool=0);# concentration as mols per liter
times = seq(0,24,1);#hourly

derivative = dNdt(times,ystart,params)
out = ode(y=ystart,times=times,func=dNdt,parms=params)

plot(out[,1],out[,4],type="l",xlab="time (hr)",ylab="Pool Concentration (mols/L)");#Phytoplankton Pool
lines(out[,1],out[,2],col="red");#Dissolved pool
lines(out[,1],out[,3],col="blue");#Zooplankton pool

## Still in developement...
