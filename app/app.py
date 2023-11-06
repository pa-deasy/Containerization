from flask import Flask, request
import os

from dtos import DivideResponse, MultiplyResponse, SumResponse


app = Flask(__name__)


@app.route('/')
def hello():
    return 'hello world'


@app.route('/sum', methods=['GET'])
def sum():
    a = request.args.get('a')
    b = request.args.get('b')
    
    if not a or not b:
        return {'error': 'Parameters <a> and <b> are required to calculate a sum'}, 400
    try:
        a = float(a)
        b = float(b)
    except:
        return {'error': 'Parameter <a> and <b> must be of type float'}, 400
    
    sum = a + b
    
    response = SumResponse(a=a, b=b, sum=sum)

    return response, 200


@app.route('/multiply', methods=['GET'])
def multiply():
    a = request.args.get('a')
    b = request.args.get('b')
    
    if not a or not b:
        return { 'error': 'Parameters <a> and <b> are required to calculate a product' }, 400
    try:
        a = float(a)
        b = float(b)
    except:
        return { 'error': 'Parameters <a> and <b> must be of type float' }, 400
    
    product = a * b
    
    response = MultiplyResponse(a=a, b=b, product=product)
    
    return response, 200


@app.route('/divide', methods=['GET'])
def divide():
    numerator = request.args.get('numerator')
    denominator = request.args.get('denominator')
    
    if not numerator or not denominator:
        return { 'error': 'Parameters <numerator> and <denominator> are required to calculate a quotient' }, 400
    try:
        numerator = float(numerator)
        denominator = float(denominator)
    except:
        return { 'error': 'Parameters <numerator> and <denominator> must be of type float' }, 400
    
    quotient = numerator / denominator
    
    response = DivideResponse(numerator=numerator, denominator=denominator, quotient=quotient)
    
    return response, 200


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
