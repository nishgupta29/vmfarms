from flask import Flask




app = Flask(__name__)
@app.route("/<hello>")
def test(hello):
     return "Hello {}".format(hello)

if __name__ == '__main__':

   
   app.run(debug=True)
