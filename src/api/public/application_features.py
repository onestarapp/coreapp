from flask import Blueprint

application_features_bp = Blueprint('application_features', __name__)


@application_features_bp.route('/', methods=['GET'])
def application_features():
    return 'Hello, World!'