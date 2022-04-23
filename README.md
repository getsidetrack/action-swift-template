# Hello World Swift action

This action prints "Hello World" to the log or "Hello" + the name of a person to greet. This is designed as a template for your own GitHub Actions written in Swift and is based on GitHub's ["Hello World" Docker template](https://github.com/actions/hello-world-docker-action) and [supporting documentation](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action).

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
uses: getsidetrack/action-template-swift@main
with:
  who-to-greet: 'Mona the Octocat'
```