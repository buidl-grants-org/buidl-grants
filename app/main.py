from flask import Flask, request, send_from_directory

app = Flask(__name__)

path_to_static_dir = "../client/public"

@app.route("/")
def base():
    return send_from_directory(path_to_static_dir, "index.html")

@app.route("/<path:path>")
def home(path):
    return send_from_directory(path_to_static_dir, path)

@app.route("/handleapplication", methods=["POST"])
def handle_application():
    print(request.get_json())
    return "success"

if __name__ == "__main__":
    app.run()
