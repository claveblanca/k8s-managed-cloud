#!/usr/bin/python3
import logging
import os
from flask import Flask, request

logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)

app = Flask(__name__)
value = os.getenv("CONTENT", "Aureliano") 

@app.route('/')
def hello_world():
   return value + ' Hello World'

app.run(debug=True, host='0.0.0.0')
