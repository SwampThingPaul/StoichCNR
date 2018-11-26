# Consumer Nurtient Recycling Stoichiometry
An attempt at developing the box model from Sterner (1990) in R 

Stener 1990 developed a pool and flux model to evaluate consumer-nutrient recycling in a pelagic setting using a simple (but ellegant) model between dissolved, phytoplankton and zooplankton pools of nutrients.

![picture1](https://user-images.githubusercontent.com/36565183/48422785-60e58800-e72d-11e8-8fee-2e992cbb0125.png)

From Stener (1990), Pools and fluxes of nitrogen and phosphorus in the lower-pelagic food web. The three fluxes indicated by soild arrows between pools are considered by Sterner 1990.


Symbols used, their meanings and dimensions

| Symbols | Meaning | Dimensions | Estimate | Source |
|---|----|:---:|:----:|:---|
|P<sub>N</sub>, P<sub>P</sub>| Phytoplankton nitrogen (N) and phosphorus (P) pools | moles L<sup>-1</sup>|  | |
|Z<sub>N</sub>, Z<sub>P</sub>| Zooplankton N and P pools | moles L<sup>-1</sup>|  | |
|D<sub>N</sub>, D<sub>P</sub>| Dissolved N and P pools | moles L<sup>-1</sup>|  | |
|&phi;<sub>1</sub>| Zooplankton grazing rate | hr<sup>-1</sup>|  | |
|&phi;<sub>2 N,P</sub>| Resupply rate of N and O | moles L<sup>-1</sup> hr<sup>-1</sup>|  | |
|*m*<sub>N,P</sub>| basal metabolic release rates of N and P | hr<sup>-1</sup>|  | |
|*a*<sub>N,P</sub>| accumulation efficiencies of N and P | hr<sup>-1</sup>|  | |
|&phi;<sub>3</sub>| Loss rate from zookplankton pool | hr<sup>-1</sup>|  | |
|*f* | ratio of N to P (N:P) in zooplankton food = P<sub>N</sub>:P<sub>P</sub>| dimensionless | | |
|*s* | N:P resupplied to the dissolved pool | dimensionless | | |
|*b* | N:P in zooplankton | dimensionless | | |
|&mu;| phytoplankton uptake rate (from Dissolved Pool)| hr<sup>-1</sup>|  | |

***
___Success!!___ Using some very general assumptions (identified below), not accounting for non-algal zooplankton food, non-grazing phytoplankton loss and non-zooplankton nutrient sources (i.e. external sources) for one parameter the model run looks good. 

![eq1_output_example_small](https://user-images.githubusercontent.com/36565183/49031858-1e826900-f179-11e8-8658-bed4bc268bfc.png)


Intial parameters

| Parameter | Value | 
|---|---|
|Z<sub>x,i=1</sub> | 0 |
|P<sub>x,i=1</sub> | 0 |
|D<sub>x,i=1</sub> | 2 |
|&phi;<sub>1</sub> (zooplankton grazing rate) | 0.2 |
|&phi;<sub>2</sub> (resupply) | 1 |
|&phi;<sub>3</sub> (zooplankton loss rate) | 0.1 |
|&mu; (Phytoplankton uptake rate) | 0.1 |
|*m*<sub>x</sub> (basal metabolic release rate) | 0.1 |
|*a*<sub>x</sub> (accumulation efficiencies of x) | 0 |


***

__WORK IN PROGRESS__




***
## References
Sterner, R. W. 1990. The Ratio of Nitrogen to Phosphorus Resupplied by Herbivores: Zooplankton and the Algal Competitive Arena. The American Naturalist 136:209–229.
