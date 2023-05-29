from app import db, ma
# from models.feedback_model import FeedbackSchema

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(50), nullable=False)
    last_name = db.Column(db.String(50), nullable=False)
    # feedbacks = db.relationship('Feedback', backref='user')

    def __init__(self, first_name, last_name):
        self.first_name = first_name
        self.last_name = last_name
        
class UserSchema(ma.SQLAlchemyAutoSchema):
    # feedbacks = ma.Nested(FeedbackSchema, many=True)
    class Meta:
        model = User
        
user_schema = UserSchema()
users_schema = UserSchema(many=True)