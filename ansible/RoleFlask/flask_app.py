#!/home/formation/venv/bin/python

import logging

# Configurer le journal pour écrire dans un fichier
logging.basicConfig(filename='/tmp/flask_app.log', level=logging.DEBUG)

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, Flask!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True)
    