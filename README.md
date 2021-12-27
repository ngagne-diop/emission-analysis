# emission-analysis

I-   Vehicle emission
I-1- This part realized with the code emissions.ipynb allows to get the shares for each type of energy in the French car fleet. It takes as input the fleet database as of January 1, 2021 : https://www.statistiques.developpement-durable.gouv.fr/donnees-sur-le-parc-automobile-francais-au-1er-janvier-2021.
I-2- Once the energy type shares are obtained, the assign-typeNRJ-to-car.awk code is used to randomly assign an energy type to vehicles to plans. Public transport modes, walk, bike and trucks are also created as vehicle types with their corresponding emission profiles.
I-3- With the available vehicle emission profiles and the results of the transport simulation, the trip flows are simulated in the MATSim emission extension to obtain the emissions of each vehicle and its energy consumption : https://github.com/matsim-org/matsim-code-examples/blob/13.x/src/main/java/org/matsim/codeexamples/extensions/emissions/RunAverageEmissionToolOfflineExample.java.
I-4&5- Recovery of energy per vehcile by recupNRJ.awk and emissions by recupEmission.awk. 
I-6- From MATSim output simulation, with recupTripModeCat.awk, income class and mode trips are recoveried.
II-  Emission calcul
     the last of emissions.ipynb allow to have all emissions for vehicles and which can be aggregated.
