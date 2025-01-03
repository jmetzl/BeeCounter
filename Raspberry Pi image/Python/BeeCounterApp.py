import RPi.GPIO as GPIO
import mysql.connector
from datetime import datetime

# Database configuration
DB_CONFIG = {
    'host':'10.0.0.50',
    'user':'pi',
    'password':'\&pegasus1\&',
    'database':'beecounterdb'
}

GPIO_PIN = 24
GPIO.setmode(GPIO.BCM)
GPIO.setup(GPIO_PIN, GPIO.IN, pull_up_down = GPIO.PUD_UP)


def insert_event_into_db():
    try:
        event_time = datetime.now()
        connection = mysql.connector.connect(**DB_CONFIG)
        cursor = connection.cursor()

        query = "INSERT INTO BEE_TRAFFIC(BT_LB_ID, BT_LIGHT_BARRIER_CROSS_DATE_TIME) VALUES (11, %s)"
        cursor.execute(query, (event_time,))

        connection.commit()
        print(f"Event logged at {event_time}")
    except mysql.connector.Error as e:
        print(f"Error inserting Light Barrier crossing event into database: {e}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

    def gpio_even_callback(channel):
        print ("GPIO input changed!")
        insert_event_into_db()

    GPIO.add_event_detect(GPIO_PIN, GPIO.RISING, callback=gpio_even_callback, bouncetime = 200)

    try:
        print("Monitoring GPIO input ...")
        while True:
            pass
    except KeyboardInterrupt:
        print ("Exiting...")
    finally:
        GPIO.cleanup()