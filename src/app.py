from flask import Flask, jsonify
import time

app = Flask(__name__)

tasks = [
    {"id": 1, "title": "Setup Operating Systems Assignment", "done": True},
    {"id": 2, "title": "Configure Dockerfile & Compose", "done": True},
    {"id": 3, "title": "Push project to GitHub", "done": False}
]

@app.route('/')
def home():
    return jsonify({
        "status": "success",
        "message": "Welcome to TaskTrack-API! OS Practical Assignment.",
        "endpoints": {
            "/tasks": "GET all tasks",
            "/health": "Check container health"
        }
    })

@app.route('/tasks', methods=['GET'])
def get_tasks():
    return jsonify({"count": len(tasks), "tasks": tasks})

@app.route('/health', methods=['GET'])
def health_check():
    return jsonify({"status": "healthy", "timestamp": time.time()}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)