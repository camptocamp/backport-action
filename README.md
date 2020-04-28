# backport-action

GitHub Action to backport pull requests.

Put this in your `.github/workflows/backport.yml`:

```yaml
name: Backport

on:
  pull_request:
    types:
      - closed
      - labeled

jobs:
  backport:
    runs-on: ubuntu-latest
    name: Backport closed pull request
    steps:
    - uses: sbrunner/backport-action@v1
```

And for each pull request that needs to be backported to branch `<branch>` add a `backport <branch>` label on the pull request.

It's also usefull to add in all jobs of your main continus integration workflow:

```yaml
    if: "!startsWith(github.event.head_commit.message, '[skip ci] ')"
```
