import pigpio
import time
import logging

# Configure logging
logging.basicConfig(filename='/var/log/gpio_changes.log', level=logging.INFO)

# Callback function for GPIO changes
def gpio_callback(gpio, level, tick):
    logging.info(f"GPIO {gpio} changed to {level} at {tick}")

# Initialize pigpio
pi = pigpio.pi()

# Specify GPIO pin to monitor
GPIO_PIN = 11  # Example: GPIO 11

# Set GPIO pin as input
pi.set_mode(GPIO_PIN, pigpio.INPUT)

# Set up callback for GPIO changes
pi.callback(GPIO_PIN, pigpio.EITHER_EDGE, gpio_callback)

try:
    # Keep the script running
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    pass
finally:
    # Cleanup
    pi.stop()
