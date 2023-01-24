import time
import os
from flask import Flask, render_template, request
app = Flask(__name__)
@app.route("/<deviceName>/")
def action(deviceName):
    if deviceName != 'monstermash':
        if deviceName == 'block':
            os.system('./home/vengines/network/blockdomains.sh')
            return 'ok'
        if deviceName == 'unblock':
            os.system('./home/vengines/network/unblockdomains.sh')
            return 'ok'
        if deviceName == 'blocktube':
            os.system('./home/vengines/network/blockyoutube.sh')
            return 'ok'
        if deviceName == 'unblocktube':
            os.system('./home/vengines/network/unblockyoutube.sh')
            return 'ok'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)
