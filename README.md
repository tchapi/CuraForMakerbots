Cura For Makerbots
==================

Tools to use Cura as a primary slicer with Makerbots printers

## Makerbots Profile

The file [Cura_Makerbot_standard_profile.ini](Cura_Makerbot_standard_profile.ini) is a standard Cura profile for creating gcode for Makerbot Replicator 2 and 2X Desktop 3D Printers.
Open this profile before creating your gcode.

The output gcode will still lack a few tweaks to be compatible with Makerware.

## Converter script

> Update : This script is no longer needed since [Ultimaker/CuraEngine@4f5b366](https://github.com/Ultimaker/CuraEngine/commit/4f5b366af2548d3682d3c23f0a9fecf10d564431)

The script [Cura_gcode_converter.sh](Cura_gcode_converter.sh) converts the previously generated gcode to the Makerware format. You can then create an X3G from it in Makerware to print the model.

**What is does** :

  * Replaces `M109` with `M104` (Temperature setting for the extruder)
  * Comments `G21` and `G90` (Units and positionning)
  * Replaces `M107` with `M127`, and `M106` with `M126` (Filament fan stuff)
  * Replaces `G28` with a proper `G162` (X and Y homing)


### Please contribute !

If you're using Cura to slice and a Makerbot to print, do not hesitate to point out problems and pull request modifications to these settings and scripts


- - -

**Author** : Cyril Chapellier / CKAB (2013)

**License** : MIT. Just don't blame me if your Makerbot explodes ...
