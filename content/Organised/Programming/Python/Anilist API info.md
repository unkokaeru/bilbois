Constants:

client_id = "21811"
client_secret = "vJG5Rnf7xQz7yqMxsCoGqtPArK2yad8cNRxJguq7"
redirect_uri = "https://anilist.co/api/v2/oauth/pin"

---

Authorisation URL
f"https://anilist.co/api/v2/oauth/authorize?client_id={client_id}&redirect_uri={redirect_uri}&response_type=code"
i.e. "https://anilist.co/api/v2/oauth/authorize?client_id=21811&redirect_uri=https://anilist.co/api/v2/oauth/pin&response_type=code"

Returns something like
auth_code = "def50200da3dedf81b893908fca9420de5163795d89da72a6d629a5dd86896b3c16c211701d82d8800dd5edb2776a20bac8916b3ef2e59018ec204ee7360582427ef416554de5e7a0c3c6bf09029974e5d003093cd52257a110db08c16a9eacae2264e0319be960eea72788760bff23901f15a1514147b62613bf4ca3167b0df10b75872f2f06090987f56d6889c740a81cb47e9430b1d5eca865789ed286ecb2509802253d3d056d0da16b32c293a93e089f299a0d0378a7ed2f4600c51d82b5bbedb8f3efeb57cb7fc265bfec883ae24f64354b6f6222bc9dfb673e6c9edb6f700d9ae4513ecc19760a7325d23552875f75091860960498aa9477736cfa0ec5a357c92545d303167cc5efc57156944f0e30b7b69b769f7a3c92303a2feec5d1c3c1f00149bc49853928b11c67fa2338a47d4a9ba165c95f64bcf5edd7cffd886c29d544fd8258a6573bd95546c80656238760f16e5757d598a4d1b2a71550dec4a68bba532c1ca2ad10a058aeb1d031929"

---

Code to token URL (POST request)
"https://anilist.co/api/v2/oauth/token"

headers = {"Content-Type": "application/json", "Accept": "application/json"}
body = {"grant_type": "authorization_code", "client_id": "{client_id}", "client_secret": "{client_secret}", "redirect_uri": "{redirect_uri}", "code": "{auth_code}"}

Returns something like
access_token = eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjUxZGUwMmE5ZTVlZDQ3MjIyNGQyNjhlMmU1NDM4NzVlZTcwZDRlMzQxMzdlODYxNWNmYzI1YzM2ZTg2N2ExZWY5Y2NhMWVmMTJlZmI5NjRmIn0.eyJhdWQiOiIyMTgxMSIsImp0aSI6IjUxZGUwMmE5ZTVlZDQ3MjIyNGQyNjhlMmU1NDM4NzVlZTcwZDRlMzQxMzdlODYxNWNmYzI1YzM2ZTg2N2ExZWY5Y2NhMWVmMTJlZmI5NjRmIiwiaWF0IjoxNzI5MDg5MzgyLCJuYmYiOjE3MjkwODkzODIsImV4cCI6MTc2MDYyNTM4Miwic3ViIjoiNTg4MjEyOCIsInNjb3BlcyI6W119.vy-DjFL76xWWbHh1HHGZwOjP1vO78XetSDdTPGHJWk9cAOXn4KdcY52YS6iO8O5dySEsUXtBsqEqE35CE8CuzbMw_oyUDJ3ws0WeLrLv0ygm0yf-P6-XLLugr5CC8bcFWwSCLjk9Uk7yRi9rilvJbR49zVJexyZ37jabG9sAEEWOlwxeIIKOhVXn5C0jlqZ_NF9bccdUeg5Fhze5Mm-9gpd0yRkCUcapmNz-GAjNa9QCN5IeR0ldI2e02fXBqkY9pbDFBnCEn027zXjuBZqQo4QESCkGZk2_i0Tnmksb4RsXNcFcD8eRZIEvqyYcnjQ6Rii17HSh_PKkNam9LOGheJhwkljSbDngD2gLwb9G_AiV-TnpxT1anBBJF345Srg3dGVVzxAoYixvSMJkBuDr8S-58jABTYED4A0ag00TFN5r4HqpDpf-p0caf1BLJpSpYscgr7BN_FOapXp-7hNGKokhyfHQoxAO8XmIc_XRSQCtWj6dWUxCBoHaDMIV99Oeq6poXt0IHiFZn-zSnfnO2oqWJqzknQ_cBTkLN4HWZK6sJeBoO2DCoe8Wv5op1IJf6aK_2dJ7MliMeZK9lCtr07HGFVQjJu_4YoGge7Tuj8fr5oBzYj5NqLOeZx1md27RZLXwY2JjpN3U647FBOQJkM5iuczd_WxbATQ2TF1SIUo

---

API request URL
"https://graphql.anilist.co"

headers = {"Authorization": f"Bearer {access_token}", "Content-Type": "application/json", "Accept": "application/json"}
body = {query: query}  # as json

example graphql query:
```
query MediaListCollection($userName: String, $type: MediaType, $sort: [MediaListSort], $format: ScoreFormat) {
  MediaListCollection(userName: $userName, type: $type, sort: $sort) {
    lists {
      entries {
        media {
          title {
            userPreferred
          }
        }
        score(format: $format)
      }
      name
    }
  }
}
```
where variables could be
{
  "userName": "unkokaeru",
  "type": "ANIME",
  "sort": "ADDED_TIME",
  "format": "POINT_10",
}

as a CSV, the results would be something like
```
entries,name
"[{""media"":{""title"":{""userPreferred"":""ONE PIECE""}},""score"":0},{""media"":{""title"":{""userPreferred"":""As a Reincarnated Aristocrat, I'll Use My Appraisal Skill to Rise in the World Season 2""}},""score"":0},{""media"":{""title"":{""userPreferred"":""I’ll Become a Villainess Who Goes Down in History""}},""score"":0},{""media"":{""title"":{""userPreferred"":""The Most Notorious \""Talker\"" Runs the World's Greatest Clan""}},""score"":0},{""media"":{""title"":{""userPreferred"":""Wistoria: Wand and Sword""}},""score"":0},{""media"":{""title"":{""userPreferred"":""Jormungand""}},""score"":0},{""media"":{""title"":{""userPreferred"":""DAN DA DAN""}},""score"":0}]",Watching
"[{""media"":{""title"":{""userPreferred"":""The Promised Neverland Season 2""}},""score"":0},{""media"":{""title"":{""userPreferred"":""High School DxD HERO""}},""score"":0}]",Dropped
```