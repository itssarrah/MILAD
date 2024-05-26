from flask import Flask, request, jsonify
import joblib

# # Load the model from the file
model = joblib.load('random_forest_pregnancy_risk_model.pkl')

# app = Flask(__name__)

# @app.route('/api', methods=['GET'])
# def predict():
#     Get query parameters from the URL
#     print ("ARgs:",request.args)
#     print (request)
#     age = float(request.args.get('age'))
#     systolicbp = float(request.args.get('systolicbp'))
#     diastolicbp = float(request.args.get('diastolicbp'))
#     bs = float(request.args.get('bs'))
#     bodytemp = float(request.args.get('bodytemp'))
#     heartrate = float(request.args.get('heartrate'))

#     result = model.predict([[age, systolicbp, diastolicbp, bs, bodytemp, heartrate]])
#     print(result);
#     return jsonify(result)
    

# if __name__ == "__main__":
#     app.run()
    
# from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!'

@app.route('/predict', methods=['GET'])
def predict():
    
    print ("ARgs:",request.args)
    print (request)
    age = float(request.args.get('age'))
    systolicbp = float(request.args.get('systolicbp'))
    diastolicbp = float(request.args.get('diastolicbp'))
    bs = float(request.args.get('bs'))
    bodytemp = float(request.args.get('bodytemp'))
    heartrate = float(request.args.get('heartrate'))

    result = model.predict([[age, systolicbp, diastolicbp, bs, bodytemp, heartrate]])
    # print(result);
    result_list = result.tolist()

    return jsonify(result_list)
    

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)




