# import library for GPIO
import RPi.GPIO as GPIO
# print GPIO info
print(GPIO.RPI_INFO)

# time library
import time

# ----------------------------------
# Entrance 1
# Inner Pin 11/GPIO 17
entrance_1_inner_light_barrier = 17
# Outer Pin 12/GPIO 18
entrance_1_outer_light_barrier = 18

# ----------------------------------
# Entrance 2
# Inner Pin 13/GPIO 27
entrance_2_inner_light_barrier = 27
# Outer Pin 15/GPIO 22
entrance_2_outer_light_barrier = 22

# ----------------------------------
# Entrance 3
# Inner Pin 16/GPIO 23
entrance_3_inner_light_barrier = 23
# Outer Pin 18/GPIO 24
entrance_3_outer_light_barrier = 24

# ----------------------------------
# Entrance 4
# Inner Pin 22/GPIO 25
entrance_4_inner_light_barrier = 25
# Outer Pin 7/GPIO 4
entrance_4_outer_light_barrier = 4

# ----------------------------------
# Entrance 5
# Inner Pin 8/GPIO 14
entrance_5_inner_light_barrier = 14
# Outer Pin 9/GND???
entrance_5_outer_light_barrier = 4

# ----------------------------------
# Entrance 6
# Inner Pin 24/GPIO 8
entrance_6_inner_light_barrier = 8
# Outer Pin 26/GPIO 7
entrance_6_outer_light_barrier = 7

# ----------------------------------
# Entrance 7
# Inner Pin 19/GPIO 10
entrance_7_inner_light_barrier = 10
# Outer Pin 21/GPIO 9
entrance_7_outer_light_barrier = 9

# Setup GPIO mode to Broadcom
GPIO.setmode(GPIO.BCM)

# configure the pin as input pin
GPIO.setup(entrance_1_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_1_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_2_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_2_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_3_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_3_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_4_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_4_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_5_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_5_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_6_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_6_outer_light_barrier,  GPIO.IN)

GPIO.setup(entrance_7_inner_light_barrier,  GPIO.IN)
GPIO.setup(entrance_7_outer_light_barrier,  GPIO.IN)

# do the loop
try:
    while (True):

        print("-------------------------------------------")
        print("Entrance 1:")
        if GPIO.input(entrance_1_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_1_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 2:")
        if GPIO.input(entrance_2_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_2_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 3:")
        if GPIO.input(entrance_3_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_3_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 4:")
        if GPIO.input(entrance_4_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_4_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 5:")
        if GPIO.input(entrance_5_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_5_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 6:")
        if GPIO.input(entrance_6_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_6_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")

        print("-------------------------------------------")
        print("Entrance 7:")
        if GPIO.input(entrance_7_inner_light_barrier) == 0:
            print("  Inner light barrier: OFF")
        else:
            print("  Inner light barrier: ON")

        if GPIO.input(entrance_7_outer_light_barrier) == 0:
            print("  Outer light barrier: OFF")
        else:
            print("  Outer light barrier: ON")
        time.sleep(1)
# If user presses ^C cleanup the GPIO
except KeyboardInterrupt:
    GPIO.cleanup()
print("Exiting")