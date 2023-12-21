#!/usr/bin/python3
import requests

url = 'emmytech.tech'  # Replace this with the URL you want to read

# Send an HTTP GET request to the URL
response = requests.get(url)

# Check if the request was successful (status code 200)
if response.status_code == 200:
    # Print the content of the response (webpage content)
    print(response.text)
else:
    print(f"Failed to retrieve content. Status code: {response.status_code}")
