// SPDX-FileCopyrightText: 2021 Jens Meisner <jens.meisner@ose-germany.de>
//
// SPDX-License-Identifier: CC-BY-SA-4.0

/*File Info--------------------------------------------------------------------
File Name: PoleBase.scad
Project Name: OpenHardware LOOM - OHLOOM
License: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
Name: Jens Meisner
Date: 08/01/20
Desc:  This file is part of the OHLOOM Project. Original design by Oliver Slueter, who made all wooden parts without a CNC Router. https://wiki.opensourceecology.de/Open_Hardware-Webstuhl_%E2%80%93_OHLOOM
Usage: 
./OHLoom_Documentation/Assembly_Guide/AssemblyGuide.md
./OHLoom_Documentation/User_Guide/OHLOOM_UserGuide.md
/*
/*Modifications------------------------------------------------------------
New File Name: Enter name, if it has changed
Name: Enter name of author
Date: 
Desc: Describe changes of the original design
*/
//Please continue with any fur enter any further modification here
//--------------------------------------------------------------------------------

d1=47;  //outer diameter
d2=37;  //inner diameter
h1=100; //cylinder height
h2=5;   //base thickness

union()
{
    hull()
    {
        translate([-d2/4,-d2*1.8,0])
        cylinder(h=h2,d=d2);
        translate([d2/4,-d2*1.8,0])
        cylinder(h=h2,d=d2);
        translate([-d2,d2/1.5,0])
        cylinder(h=h2,d=d2);
        translate([d2,d2/1.5,0])
        cylinder(h=h2,d=d2);
    }
    difference()
    {
        union()
        {
            cylinder(h=h1,d=d1);
            translate([0,h2/2,d1/2])
            rotate([90,30,0])
            cylinder(h=h2,d=d1*1.8,$fn=3);
            translate([h2/2,0,d1/2])
            rotate([90,30,-90])
            cylinder(h=h2,d=d1*1.8,$fn=3);
        }       
        cylinder(h=h1,d=d2);
    }
}