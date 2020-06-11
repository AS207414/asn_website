from flask import Flask, render_template, url_for, request

app = Flask(__name__)


@app.route('/', methods=["GET"])
def home_page():
    return render_template('index.html')


@app.route('/peering.html', methods=["GET"])
def peering():
    return render_template('peering.html')
