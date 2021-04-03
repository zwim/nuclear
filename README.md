
# Physical constants and functions

A library for (wx)Maxima for physical constants, isotope masses and nuclear decay calculations.

The database contains **3436 known isotopes**! (since 3 Mar 2021 new data is available, will be included soon!)

An example calculation:

![grafik](https://user-images.githubusercontent.com/36999612/113488006-a13f2f80-94bb-11eb-9f14-e36745c31adf.png)


## Usage

Download or clone this repository to your local `.maxima`-folder.

In wxMaxima enter `load(my_constants)` for using the constants and `load(nuclear_physics)` for nuclear physics.

Now you are ready (some examples):
* `%U` gives you the atomic number for Uranium
* `searchElementName(12)` gives you the name of the 12th element
* `decays(231, %Th)` or `decays(231, "Th")` shows you all possile nuclear decays of Thorium-231 (calculated from mass defect).
* `speedFromEnergy(1e6*%qe, %me)` calculates the speed of an electron with 1MeV kinetic energy

## Constants defined

All defined physical constants start with the %-symbol.

Examples:

* %c ... Speed of light 
* %qe ... Electron charge
* %G ... Universal gravity constant
* %me ... Electron mass
*  ...

## Functions defined

Entering `nuclear()` shows a usage message for all defined functions.

## Acknowledgment

Live Chart of Nuclids: https://www-nds.iaea.org/relnsd/vcharthtml/VChartHTML.html 

Database of isotope masses: https://www-nds.iaea.org/amdc/
