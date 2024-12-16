(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: Beecounter-PTH.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Saturday, 30 November 2024 at 13:43)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.29972)
(Tool: 2 -> Dia: 0.5003799999999999)
(Tool: 3 -> Dia: 0.8000999999999999)
(Tool: 4 -> Dia: 1.0007599999999999)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)
(Tool: 2 -> Feedrate: 300)
(Tool: 3 -> Feedrate: 300)
(Tool: 4 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)
(Tool: 4 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.7)
(Tool: 3 -> Z_Cut: -1.7)
(Tool: 4 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 3 -> Offset Z: 0.0)
(Tool: 4 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)
(Tool: 3 -> Z_Move: 2)
(Tool: 4 -> Z_Move: 2)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 0.5 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    5.6201 ...   54.8808  mm)
(Y range:    3.9012 ...  156.1399  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F300.00

M5
G00 Z15.0000
T3
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.8001 ||| Total drills for tool T3 = 138)
M0
G00 Z15.0000

G01 F300.00
M03
G00 X25.0282 Y140.5545
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y140.5545
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y140.3005
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y140.3005
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.0604 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X36.6004 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.1404 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X41.6804 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.2204 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.7604 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.3004 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X51.8404 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X54.3804 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X54.3804 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X51.8404 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X49.3004 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X46.7604 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X44.2204 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X41.6804 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X39.1404 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X36.6004 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.0604 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5204 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5204 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X28.9804 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X28.9804 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X26.4404 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X26.4404 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X23.9004 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X23.9004 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X21.3604 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X21.3604 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X18.8204 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X18.8204 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X16.2804 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X16.2804 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X13.7404 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X13.7404 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X11.2004 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X11.2004 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X8.6604 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X8.6604 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.1204 Y155.6395
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.1204 Y153.0995
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y135.1341
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y132.5941
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y130.0541
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y115.1342
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y112.5942
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y110.0542
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y95.1342
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y92.5942
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y90.0542
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y75.1342
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y72.5942
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y70.0542
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y55.1343
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y52.5943
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y50.0543
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y35.1343
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y32.5943
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y30.0543
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y15.1344
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y12.5944
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X6.5675 Y10.0544
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y4.5553
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y4.5553
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y4.3013
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y4.3013
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y20.5547
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y20.5547
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y24.5552
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y24.5552
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y24.3012
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y24.3012
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y20.3007
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y20.3007
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y9.9096
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y12.4496
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y14.9896
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y29.9095
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y32.4495
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y34.9895
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y49.9095
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y52.4495
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y54.9895
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y44.3012
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y44.3012
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y40.3007
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y40.3007
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y40.5547
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y40.5547
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y44.5552
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y44.5552
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y60.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y60.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y64.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y64.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y60.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y60.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y64.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y64.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y69.9095
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y72.4495
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y74.9895
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y89.9094
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y92.4494
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y94.9894
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y84.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y84.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y80.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y80.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y80.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y80.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y84.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y84.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y100.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y100.5546
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y104.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y104.5551
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y100.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y100.3006
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y104.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y104.3011
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y109.9094
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y112.4494
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y114.9894
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y129.9093
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y132.4493
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X52.4500 Y134.9893
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y124.3010
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y124.3010
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X34.1392 Y120.3005
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X31.5992 Y120.3005
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y120.5545
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y120.5545
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X27.5682 Y124.5550
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X25.0282 Y124.5550
G01 Z-1.7000
G01 Z0
G00 Z2.0000
M05
G00 Z0.50

