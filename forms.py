from wtforms import Form, StringField,RadioField,BooleanField, validators

class IPCamForm(Form):
    url = StringField('Please write your ipcam url',validators= [validators.DataRequired(),validators.URL(message='Must be a valid URL')])
