from flask import Flask, send_from_directory

app = Flask(__name__)

path_to_static_dir = "../client/public"

@app.route("/")
def base():
    return send_from_directory(path_to_static_dir, "index.html")

@app.route("/<path:path>")
def home(path):
    return send_from_directory(path_to_static_dir, path)

if __name__ == "__main__":
    app.run()
