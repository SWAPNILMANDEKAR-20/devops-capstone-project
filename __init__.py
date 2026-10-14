from flask import Flask
from flask_talisman import Talisman

def create_app():
    app = Flask(__name__)

    Talisman(
        app,
        force_https=False,
        content_security_policy={
            "default-src": "'self'"
        }
    )

    return app
