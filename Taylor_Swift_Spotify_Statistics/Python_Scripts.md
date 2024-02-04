## Python Scripts

**Albums Script**
```python
import pandas as pd
```

```python
tables = pd.read_html('https://kworb.net/spotify/artist/06HL4z0CvFAxyc27GXpf02_albums.html')
```

```python
albums_df = tables[0]
```

```python
selected_columns = ['Album Title', 'Streams']
selected_albums_df = albums_df[selected_columns]
```

```python
selected_albums_df.to_csv('albums.csv', index=False)
```

**Songs Script**
```python
import pandas as pd
```

```python
tables = pd.read_html('https://kworb.net/spotify/artist/06HL4z0CvFAxyc27GXpf02_songs.html')
```

```python
songs_df = tables[1]
```

```python
selected_columns = ['Song Title', 'Streams']
selected_songs_df = songs_df[selected_columns]
```

```python
selected_songs_df.to_csv('songs.csv', index=False)
```

**Studio Albums Script**
```python
import pandas as pd
```

```python
url = 'https://en.wikipedia.org/wiki/Taylor_Swift_albums_discography'
header = 0
tables = pd.read_html(url, header=header)
```

```python
studio_albums_df = tables[1].iloc[1:-1]
```

```python
selected_columns = ['Title']
selected_studio_albums_df = studio_albums_df[selected_columns]
```

```python
selected_studio_albums_df.to_csv('studio_albums.csv', index=False)
```

**Singles Script**
```python
import pandas as pd
```

```python
url = 'https://en.wikipedia.org/wiki/Taylor_Swift_singles_discography'
header = 0
tables = pd.read_html(url, header=header)
```

```python
for i in [1, 2, 3]:
    tables[i] = tables[i].iloc[1:-1]
```

```python
combined_table = pd.concat([tables[1], tables[2], tables[3]], ignore_index=True)
```

```python
singles = combined_table['Title']
```

```python
singles.to_csv('singles.csv', index=False)
```

**Spotify Albums Script**
```python
import requests
import pandas as pd

# Placeholder used for grant_type, client_id, and client_secret to replace private information
data = {
    'grant_type': 'client_credentials',
    'client_id': 'client_id',
    'client_secret': 'client_secret',
}

response = requests.post('https://accounts.spotify.com/api/token', data=data)
```

```python
print(response.json())
```

```python
# Placeholder used for access_token to replace private information
headers = {
    'Authorization': 'Bearer  access_token',
}

response = requests.get('https://api.spotify.com/v1/artists/06HL4z0CvFAxyc27GXpf02/albums?include_groups=album&market=US&limit=50', headers=headers)
```

```python
df = pd.json_normalize(response.json()['items'])
```

```python
df.to_csv("spotify_albums.csv", index=False)
```

**Spotify Stats Script**
```python
import requests
import pandas as pd

# Placeholder used for grant_type, client_id, and client_secret to replace private information
data = {
    'grant_type': 'client_credentials',
    'client_id': 'client_id',
    'client_secret': 'client_secret',
}

response = requests.post('https://accounts.spotify.com/api/token', data=data)
```

```python
print(response.json())
```

```python
# Placeholder used for access_token to replace private information
headers = {
    'Authorization': 'Bearer  access_token',
}

response = requests.get('https://api.spotify.com/v1/artists/06HL4z0CvFAxyc27GXpf02', headers=headers)
```

```python
df = pd.json_normalize(response.json())
```

```python
df.to_csv("spotify_stats.csv", index=False)
```
