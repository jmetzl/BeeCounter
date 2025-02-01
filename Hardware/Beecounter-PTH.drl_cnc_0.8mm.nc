(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: Beecounter-PTH.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Saturday, 01 February 2025 at 15:41)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.29972)
(Tool: 2 -> Dia: 0.8000999999999999)
(Tool: 3 -> Dia: 1.0007599999999999)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)
(Tool: 2 -> Feedrate: 60.0)
(Tool: 3 -> Feedrate: 60.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.7)
(Tool: 3 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 2 -> Offset Z: 0.0)
(Tool: 3 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)
(Tool: 3 -> Z_Move: 2)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 0.5 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    3.5407 ...   52.8014  mm)
(Y range:    1.8889 ...  158.1992  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F60.00

M5
G00 Z15.0000
T2
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.8001 ||| Total drills for tool T2 = 152)
M0
G00 Z15.0000

G01 F60.00
M03
G00 X22.9463 Y138.5447
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y138.5447
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y138.2907
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y138.2907
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.9811 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.5211 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X37.0611 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.6011 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X42.1411 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.6811 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X47.2211 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X47.2211 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.6811 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X42.1411 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.6011 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X37.0611 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.5211 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.9811 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.4411 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.4411 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X26.9011 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X26.9011 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X24.3611 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X24.3611 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X21.8211 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X21.8211 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X19.2811 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X19.2811 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X16.7411 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X16.7411 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X14.2011 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X14.2011 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X11.6611 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X9.1211 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5811 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.0411 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.0411 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5811 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X9.1211 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X11.6611 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X11.6306 Y157.6988
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X14.1706 Y157.6988
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X16.7106 Y157.6988
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X19.2506 Y157.6988
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.4207 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.9607 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.5007 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X37.0407 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.5807 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X42.1207 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.6607 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X47.2007 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.7407 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.2807 Y157.6912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.7611 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.3011 Y153.6298
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.3011 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.7611 Y151.0898
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y132.9796
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y130.4396
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y127.8996
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y112.9796
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y110.4396
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y107.8996
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y92.9796
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y90.4396
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y87.8996
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y72.9797
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y70.4397
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y67.8997
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y52.9797
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y50.4397
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y47.8997
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y32.9798
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y30.4398
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y27.8998
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y12.9798
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y10.4398
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X50.3707 Y7.8998
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y2.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y2.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y2.5455
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y2.5455
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y18.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y18.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y18.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y18.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y22.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y22.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y22.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y22.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y8.0446
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y10.5846
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y13.1246
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y28.0445
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y30.5845
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y33.1245
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y48.0445
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y50.5845
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y53.1245
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y38.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y38.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y38.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y38.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y42.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y42.2889
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y42.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y42.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y58.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y58.5449
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y58.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y58.2909
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y62.2888
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y62.2888
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y62.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y62.5454
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y78.5448
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y78.5448
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y78.2908
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y78.2908
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y82.2888
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y82.2888
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y82.5453
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y82.5453
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y68.0445
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y70.5845
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y73.1245
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y88.0444
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y90.5844
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y93.1244
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y108.0444
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y110.5844
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y113.1244
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y98.5448
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y98.5448
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y98.2908
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y98.2908
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y102.2887
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y102.2887
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y102.5453
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y102.5453
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y118.5447
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y118.5447
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y118.2907
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y118.2907
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X32.0598 Y122.2912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X29.5198 Y122.2912
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.4863 Y122.5452
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X22.9463 Y122.5452
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y128.0443
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y130.5843
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X4.4881 Y133.1243
G01 Z-1.7000
G01 Z0
G00 Z2.0000
M05
G00 Z0.50


