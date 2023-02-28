#!/usr/bin/python3
"""function that queries the Reddit API and prints the 10 titles"""

import requests


def top_ten(subreddit):
    try:
        rq = requests.get('https://www.reddit.com/r/{}/hot.json?limit=10'.
                          format(subreddit),
                          headers={'User-Agent': 'custom'},
                          allow_redirects=False)
        for thread in rq.json().get('data').get('children'):
            print(thread.get('data').get('title'))
    except:
        print('None')
