import requests

url = "https://api.short.io/khoindvn.tk/"

import json
payload = json.dumps({"hideReferer":False,"httpsLinks":False,"hostname":"yourshortdomain.com","linkType":"random"})
headers = {
    'accept': "application/json",
    'content-type': "application/json",
    'authorization': "pk_Vsudc4pdNNywk7ll"
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
