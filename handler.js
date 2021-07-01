'use strict'

// The public HTTP Api endpoints
exports.status = async (event, context, callback) => {
  callback(null, {
    statusCode: '200',
    body: JSON.stringify({
      code: 200,
      message: 'ok'
    }),
    headers: {
      'Content-Type': 'application/json'
    }
  })
}