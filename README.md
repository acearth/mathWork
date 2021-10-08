# README

This project is providing one sample API by ruby-on-rails.

Check the `Dockerfile` to see configurations. Please note, on docker build stage, we need to add Gemfile earlier to ensure we can reuse cache later in local build situation.


# Check API in local environment
Run following commands to start server
```
rails db:migrate
rails server --port 3456
```

Check it with `curl`:
```
curl -X POST "localhost:3000/math_powers?&base=2&exp=5"
```


# NOTE
About github actions with test, build, publish, deploy, please visit [action definition](https://github.com/acearth/mathWork/tree/main/.github/workflows) to check it.

Related document is [action readme](https://github.com/acearth/mathWork/blob/main/.github/workflows/README.md)
