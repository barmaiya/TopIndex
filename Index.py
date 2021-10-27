from flask import Flask, jsonify,render_template

app = Flask(__name__)
@app.route("/")
def TopTech():
    data = [
        {
           'id':'1',
            'name':'Artificial Intelligence'

        },
        {
            'id': '2',
            'name': 'Machine Learning'

        },
        {
            'id': '3',
            'name': 'Deep Learing'

        },
        {
            'id': '4',
            'name': 'Robotics'

        },
        {
            'id': '5',
            'name': 'Computer Vision'

        },
        {
            'id': '6',
            'name': 'Data Science'

        },
        {
            'id': '7',
            'name': 'Python'

        },
    ]
    return render_template('client.html', data=data)

    #return jsonify(data)

if __name__ == '__main__':
    app.run()

