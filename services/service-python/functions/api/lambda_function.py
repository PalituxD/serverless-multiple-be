import json


def handler(e, c):
    query = e.get('queryStringParameters')
    body = {"source": "python", "query": query}
    return {
        'isBase64Encoded': False,
        'statusCode': 200,
        'body': json.dumps(body),
        'headers': {
            'Content-Type': 'application/json'
        }
    }
