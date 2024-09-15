Before starting, you'll need a [GitHub account](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) and [Poetry account](https://pypi.org/account/register/). For Poetry, you should go to your [account settings](https://pypi.org/manage/account/) and click on "Add API token" within the "API tokens" section where you can then name and add a token. Once created, copy the token and add it Poetry's config with this command:
  
```bash

$ poetry config pypi-token.pypi your-api-token

```