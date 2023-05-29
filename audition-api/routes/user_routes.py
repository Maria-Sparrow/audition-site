from flask import Blueprint, request, jsonify
from models.user_model import User, user_schema, users_schema
from app import db

user_bp = Blueprint('user', __name__, url_prefix='/user')

# Create user
# @user_bp.route('/', methods=['POST'])
# def create_user():
    # id = request.json['id']
    # first_name = request.json['first_name']
    # last_name = request.json['last_name']
    # feedbacks = request.json['']
    # new_user = User(name, content, date)
    # db.session.add(new_user)
    # db.session.commit()
    # return user_schema.jsonify(new_user)
# 

# Get all users
@user_bp.route('/', methods=['GET'])
def get_all_users():
    all_users = User.query.all()
    result = users_schema.dump(all_users)
    return jsonify(result)

# # Get a single user
# @user_bp.route('/<id>', methods=['GET'])
# def get_user(id):
#     user = User.query.get(id)
#     return user_schema.jsonify(user)

# # Update a user
# @user_bp.route('/<id>', methods=['PUT'])
# def update_user(id):
#     user = User.query.get(id)
#     name = request.json['name']
#     content = request.json['content']
#     date = request.json['date']
#     user.name = name
#     user.content = content
#     user.date = date
#     db.session.commit()
#     return user_schema.jsonify(user)

# # Delete a user
# @user_bp.route('/<id>', methods=['DELETE'])
# def delete_user(id):
#     user = User.query.get(id)
#     db.session.delete(user)
#     db.session.commit()
#     return user_schema.jsonify(user)
