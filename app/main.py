from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<button> Hello world </button>"

if __name__ == "__main__":
    app.run()
