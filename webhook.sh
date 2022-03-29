import requests
import json
from pprint import pprint
from getpass import getpass

TOKEN = getpass("Please enter your token: ")

baseURL = "https://webexapis.com"
room = "/v1/rooms"

body = {
    'title': 'Webhooks'
}

bodyJSON = json.dumps(body)

headers = {
    'Authorization': 'Bearer ' + TOKEN,
    'Content-Type': 'application/json'
}

createROOM = baseURL + room
request = requests.post(createROOM, headers=headers, data=bodyJSON)
response = request.json()
pprint(response)
