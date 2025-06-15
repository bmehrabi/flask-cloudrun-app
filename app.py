from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Hello from Google Cloud Run!"
    })

@app.route('/ping')
def ping():
    return jsonify({
        "response": "pong"
    })

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)

