from flask import Flask


app = Flask(__name__)

@app.route('/')
def hello_docker():
    return '<h1> This is Xapic Group-B</h1><br><p>Thank you for reading. We are the best.</p> '

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
