# app.py
from flask import Flask, request, jsonify
from model import model

app = Flask(__name__)

@app.route("/")
def home():
    return "Your ML API is running successfully!"

@app.route("/predict", methods=["POST"])
def predict():
    data = request.json
    x = data.get("value")
    result = model.predict(x)
    return jsonify({"prediction": result})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)