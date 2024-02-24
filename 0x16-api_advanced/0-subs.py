"""
 a function that queries the Reddit API and returns the number of subscribers
 """


 import requests
 def number_of_subscribers(subreddit):
     headers = {'User-Agent': 'My User Agent'}
     response = requests.get(f'https://www.reddit.com/r/{subreddit}/about.json', headers=headers)

     if response.status_code == 200:
         try:
             data = response.json()
             subscribers = data['data']['subscribers']
             return subscribers
         except KeyError:
             return 0
    else:
        return 0
