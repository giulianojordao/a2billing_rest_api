# A2billingRestApi

Rest API for A2billing based on Phoenix Framework.

[![Build Status](https://travis-ci.org/max-konin/a2billing_rest_api.svg?branch=master)](https://travis-ci.org/max-konin/a2billing_rest_api)

## Getting Started

### Prerequisites

* Elixir: [Install Elixir](https://elixir-lang.org/install.html)

* MySQL: [Install MySQL](https://dev.mysql.com/doc/refman/5.7/en/installing.html)

### Installing

Install Mix dependencies:

```
mix deps.get
```

And compile

```
mix compile
```


## Running the tests

```
mix test
```

## Deployment

There are two way to deploy application to server: 

### Manual 
1. Install dependencies:

```
mix deps.get
```

2. Build release:
```
MIX_ENV=prod mix release --env=prod
```

3. Upload _build/prod/rel/a2billing_rest_api/releases/0.0.1/a2billing_rest_api.tar.gz to remote server
4. Extract it with tar -xzf <name>.tar.gz
5. And run it with bin/<name> start
  
### Docker

There is docker image - https://hub.docker.com/r/maxkonin/a2billing_rest_api/

[docker-compose.yml](https://github.com/max-konin/a2billing_rest_api/blob/master/docker-compose.yml) - Docker Compose example

### Environment variables:
* HOST
* PORT
* MYSQL_USER
* MYSQL_PWD
* MYSQL_HOST
* MYSQL_DATABASE

## Contributing

Please read [CONTRIBUTING.md](https://github.com/max-konin/a2billing_rest_api/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Max Konin** - *Initial work* - [MaxKonin](https://github.com/max-konin)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
