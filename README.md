# backport-action

GitHub Action to backport pull requests.

If you want that your CI runs on the new Pull request you should generate your own tocken in a secret
e.-g. named `BACKPORT_GITHUB_TOKEN`.

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
      - uses: sbrunner/backport-action@v1.0.0
        with:
          token: ${{ secrets.BACKPORT_GITHUB_TOKEN }}
```

And for each pull request that needs to be backported to branch `<branch>` add a `backport <branch>` label
on the pull request.

It's also useful to add in all jobs of your main continuous integration workflow:

```yaml
    if: "!startsWith(github.event.head_commit.message, '[skip ci] ')"
```

To don't run the CI on failed backport.

On failed backport a pullrequest is also open with the instructions to ends the backport as a comment.
