const axios = require('axios');

const data = {
    "hideReferer":false,
    "httpsLinks":false,
    "hostname":"khoindvn.tk",
    "linkType":"random"
};

const options = {
  headers: {
    accept: 'application/json',
    'content-type': 'application/json',
    authorization: 'sk_2pQPOcZMawRKsmHK'
  }
};

axios.post('https://api.short.io/khoindvn.tk/', data, options)
.then(function (response) {
  console.log(response.data);
})
.catch(function (response) {
  console.log(response);
});
