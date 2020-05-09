from flask import Flask, render_template, url_for, request

app = Flask(__name__)


@app.route('/', methods=["GET"])
def home_page():
    return render_template('index.html', users_ip=request.remote_addr)


@app.route('/peering.html', methods=["GET"])
def peering():
    return render_template('peering.html', users_ip=request.remote_addr)

if __name__ == '__main__':
    app.debug = True
    app.run(debug=True, host='0.0.0.0')
