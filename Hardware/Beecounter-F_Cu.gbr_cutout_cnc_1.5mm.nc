(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: Beecounter-B_Cu.gbr_cutout_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Saturday, 25 January 2025 at 13:32)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.5 mm)
(Feedrate_XY: 120.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.8 mm)
(DepthPerCut: 0.6 mm <=>3 passes)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:   -0.9500 ...   55.9600  mm)
(Y range:   -0.9400 ...  160.9600  mm)

(Spindle Speed: 0.0 RPM)
G21
G90
G94

G01 F120.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
M6    
(MSG, Change to Tool Dia = 1.5000)
M0
G00 Z15.0000

M03
G01 F120.00
G00 X24.8550 Y-0.9400
G01 F60.00
G01 Z-0.6000
G01 F120.00
G01 X-0.1000 Y-0.9400
G01 X-0.1834 Y-0.9360
G01 X-0.2659 Y-0.9237
G01 X-0.3468 Y-0.9034
G01 X-0.4253 Y-0.8753
G01 X-0.5007 Y-0.8397
G01 X-0.5723 Y-0.7968
G01 X-0.6393 Y-0.7471
G01 X-0.7011 Y-0.6911
G01 X-0.7571 Y-0.6293
G01 X-0.8068 Y-0.5623
G01 X-0.8497 Y-0.4907
G01 X-0.8853 Y-0.4153
G01 X-0.9134 Y-0.3368
G01 X-0.9337 Y-0.2559
G01 X-0.9460 Y-0.1734
G01 X-0.9500 Y-0.0900
G01 X-0.9500 Y77.3600
G00 X-0.9500 Y77.3600
G01 F60.00
G01 Z-1.2000
G01 F120.00
G01 X-0.9500 Y-0.0900
G01 X-0.9460 Y-0.1734
G01 X-0.9337 Y-0.2559
G01 X-0.9134 Y-0.3368
G01 X-0.8853 Y-0.4153
G01 X-0.8497 Y-0.4907
G01 X-0.8068 Y-0.5623
G01 X-0.7571 Y-0.6293
G01 X-0.7011 Y-0.6911
G01 X-0.6393 Y-0.7471
G01 X-0.5723 Y-0.7968
G01 X-0.5007 Y-0.8397
G01 X-0.4253 Y-0.8753
G01 X-0.3468 Y-0.9034
G01 X-0.2659 Y-0.9237
G01 X-0.1834 Y-0.9360
G01 X-0.1000 Y-0.9400
G01 X24.8550 Y-0.9400
G00 X24.8550 Y-0.9400
G01 F60.00
G01 Z-1.8000
G01 F120.00
G01 X-0.1000 Y-0.9400
G01 X-0.1834 Y-0.9360
G01 X-0.2659 Y-0.9237
G01 X-0.3468 Y-0.9034
G01 X-0.4253 Y-0.8753
G01 X-0.5007 Y-0.8397
G01 X-0.5723 Y-0.7968
G01 X-0.6393 Y-0.7471
G01 X-0.7011 Y-0.6911
G01 X-0.7571 Y-0.6293
G01 X-0.8068 Y-0.5623
G01 X-0.8497 Y-0.4907
G01 X-0.8853 Y-0.4153
G01 X-0.9134 Y-0.3368
G01 X-0.9337 Y-0.2559
G01 X-0.9460 Y-0.1734
G01 X-0.9500 Y-0.0900
G01 X-0.9500 Y77.3600
G00 Z2.0000
G00 X-0.9500 Y82.8600
G01 F60.00
G01 Z-0.6000
G01 F120.00
G01 X-0.9500 Y160.1100
G01 X-0.9460 Y160.1934
G01 X-0.9337 Y160.2759
G01 X-0.9134 Y160.3568
G01 X-0.8853 Y160.4353
G01 X-0.8497 Y160.5107
G01 X-0.8068 Y160.5823
G01 X-0.7571 Y160.6493
G01 X-0.7011 Y160.7111
G01 X-0.6393 Y160.7671
G01 X-0.5723 Y160.8168
G01 X-0.5007 Y160.8597
G01 X-0.4253 Y160.8953
G01 X-0.3468 Y160.9234
G01 X-0.2659 Y160.9437
G01 X-0.1834 Y160.9560
G01 X-0.1000 Y160.9600
G01 X24.8550 Y160.9600
G00 X24.8550 Y160.9600
G01 F60.00
G01 Z-1.2000
G01 F120.00
G01 X-0.1000 Y160.9600
G01 X-0.1834 Y160.9560
G01 X-0.2659 Y160.9437
G01 X-0.3468 Y160.9234
G01 X-0.4253 Y160.8953
G01 X-0.5007 Y160.8597
G01 X-0.5723 Y160.8168
G01 X-0.6393 Y160.7671
G01 X-0.7011 Y160.7111
G01 X-0.7571 Y160.6493
G01 X-0.8068 Y160.5823
G01 X-0.8497 Y160.5107
G01 X-0.8853 Y160.4353
G01 X-0.9134 Y160.3568
G01 X-0.9337 Y160.2759
G01 X-0.9460 Y160.1934
G01 X-0.9500 Y160.1100
G01 X-0.9500 Y82.8600
G00 X-0.9500 Y82.8600
G01 F60.00
G01 Z-1.8000
G01 F120.00
G01 X-0.9500 Y160.1100
G01 X-0.9460 Y160.1934
G01 X-0.9337 Y160.2759
G01 X-0.9134 Y160.3568
G01 X-0.8853 Y160.4353
G01 X-0.8497 Y160.5107
G01 X-0.8068 Y160.5823
G01 X-0.7571 Y160.6493
G01 X-0.7011 Y160.7111
G01 X-0.6393 Y160.7671
G01 X-0.5723 Y160.8168
G01 X-0.5007 Y160.8597
G01 X-0.4253 Y160.8953
G01 X-0.3468 Y160.9234
G01 X-0.2659 Y160.9437
G01 X-0.1834 Y160.9560
G01 X-0.1000 Y160.9600
G01 X24.8550 Y160.9600
G00 Z2.0000
G00 X30.3550 Y160.9600
G01 F60.00
G01 Z-0.6000
G01 F120.00
G01 X55.1100 Y160.9600
G01 X55.1934 Y160.9560
G01 X55.2759 Y160.9437
G01 X55.3568 Y160.9234
G01 X55.4353 Y160.8953
G01 X55.5107 Y160.8597
G01 X55.5823 Y160.8168
G01 X55.6493 Y160.7671
G01 X55.7111 Y160.7111
G01 X55.7671 Y160.6493
G01 X55.8168 Y160.5823
G01 X55.8597 Y160.5107
G01 X55.8953 Y160.4353
G01 X55.9234 Y160.3568
G01 X55.9437 Y160.2759
G01 X55.9560 Y160.1934
G01 X55.9600 Y160.1100
G01 X55.9600 Y82.8600
G00 X55.9600 Y82.8600
G01 F60.00
G01 Z-1.2000
G01 F120.00
G01 X55.9600 Y160.1100
G01 X55.9560 Y160.1934
G01 X55.9437 Y160.2759
G01 X55.9234 Y160.3568
G01 X55.8953 Y160.4353
G01 X55.8597 Y160.5107
G01 X55.8168 Y160.5823
G01 X55.7671 Y160.6493
G01 X55.7111 Y160.7111
G01 X55.6493 Y160.7671
G01 X55.5823 Y160.8168
G01 X55.5107 Y160.8597
G01 X55.4353 Y160.8953
G01 X55.3568 Y160.9234
G01 X55.2759 Y160.9437
G01 X55.1934 Y160.9560
G01 X55.1100 Y160.9600
G01 X30.3550 Y160.9600
G00 X30.3550 Y160.9600
G01 F60.00
G01 Z-1.8000
G01 F120.00
G01 X55.1100 Y160.9600
G01 X55.1934 Y160.9560
G01 X55.2759 Y160.9437
G01 X55.3568 Y160.9234
G01 X55.4353 Y160.8953
G01 X55.5107 Y160.8597
G01 X55.5823 Y160.8168
G01 X55.6493 Y160.7671
G01 X55.7111 Y160.7111
G01 X55.7671 Y160.6493
G01 X55.8168 Y160.5823
G01 X55.8597 Y160.5107
G01 X55.8953 Y160.4353
G01 X55.9234 Y160.3568
G01 X55.9437 Y160.2759
G01 X55.9560 Y160.1934
G01 X55.9600 Y160.1100
G01 X55.9600 Y82.8600
G00 Z2.0000
G00 X55.9600 Y77.3600
G01 F60.00
G01 Z-0.6000
G01 F120.00
G01 X55.9600 Y-0.0900
G01 X55.9560 Y-0.1734
G01 X55.9437 Y-0.2559
G01 X55.9234 Y-0.3368
G01 X55.8953 Y-0.4153
G01 X55.8597 Y-0.4907
G01 X55.8168 Y-0.5623
G01 X55.7671 Y-0.6293
G01 X55.7111 Y-0.6911
G01 X55.6493 Y-0.7471
G01 X55.5823 Y-0.7968
G01 X55.5107 Y-0.8397
G01 X55.4353 Y-0.8753
G01 X55.3568 Y-0.9034
G01 X55.2759 Y-0.9237
G01 X55.1934 Y-0.9360
G01 X55.1100 Y-0.9400
G01 X30.3550 Y-0.9400
G00 X30.3550 Y-0.9400
G01 F60.00
G01 Z-1.2000
G01 F120.00
G01 X55.1100 Y-0.9400
G01 X55.1934 Y-0.9360
G01 X55.2759 Y-0.9237
G01 X55.3568 Y-0.9034
G01 X55.4353 Y-0.8753
G01 X55.5107 Y-0.8397
G01 X55.5823 Y-0.7968
G01 X55.6493 Y-0.7471
G01 X55.7111 Y-0.6911
G01 X55.7671 Y-0.6293
G01 X55.8168 Y-0.5623
G01 X55.8597 Y-0.4907
G01 X55.8953 Y-0.4153
G01 X55.9234 Y-0.3368
G01 X55.9437 Y-0.2559
G01 X55.9560 Y-0.1734
G01 X55.9600 Y-0.0900
G01 X55.9600 Y77.3600
G00 X55.9600 Y77.3600
G01 F60.00
G01 Z-1.8000
G01 F120.00
G01 X55.9600 Y-0.0900
G01 X55.9560 Y-0.1734
G01 X55.9437 Y-0.2559
G01 X55.9234 Y-0.3368
G01 X55.8953 Y-0.4153
G01 X55.8597 Y-0.4907
G01 X55.8168 Y-0.5623
G01 X55.7671 Y-0.6293
G01 X55.7111 Y-0.6911
G01 X55.6493 Y-0.7471
G01 X55.5823 Y-0.7968
G01 X55.5107 Y-0.8397
G01 X55.4353 Y-0.8753
G01 X55.3568 Y-0.9034
G01 X55.2759 Y-0.9237
G01 X55.1934 Y-0.9360
G01 X55.1100 Y-0.9400
G01 X30.3550 Y-0.9400
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00


