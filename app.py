from flask import Flask
from flask import request
from flask import jsonify
import subprocess
import shlex

app = Flask(__name__)

@app.route('/')
def hello():

    return "Please send requests to the '/create' path with an email and preferred username"

@app.route('/create')
def create():

    email = request.args.get('email')
    username = request.args.get('username')

    subprocess.call(shlex.split('./sfdx.sh ' + email + ' ' + username))

    data = {'Success' : 'True', 'Email' : email, 'Username' : username}
    return jsonify(data), 200

if __name__ == '__main__':
    app.run(debug=True)
