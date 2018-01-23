from traceback import format_exception
import sys

def report_error (message):
    etype, value, tb = sys.exc_info()
    exc_str = str(format_exception(etype, value, tb, 3))
    error_str = "{} {}".format(message, exc_str)
    print(error_str)