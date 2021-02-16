exports.handler = async (event) => {
    let query = event.queryStringParameters;
    console.log(query);
    let body = {source: "node", query: query};
    let response = {
        isBase64Encoded: false,
        statusCode: 200,
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(body)
    };
    return response;
};