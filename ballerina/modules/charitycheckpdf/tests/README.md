# Running Tests

There are two test environments for the Candid connector. The default test environment is the mock server for Candid API. The other test environment is the actual Candid API. You can run the tests in either of these environments.

## Running tests in the mock server

To execute the tests on the mock server, ensure that the `IS_TEST_ON_LIVE_SERVER` environment variable is either set to false or unset before initiating the tests. This environment variable can be configured within the `Config.toml` file located in the tests directory or specified as an environmental variable.

#### Using a Config.toml file

Create a `Config.toml` file in the tests directory and add your configurables:
```toml
isTestOnLiveServer = false
apiKey="<CANDID_SUBSCRIPTION_KEY>"
```

#### Using environment variables

Alternatively, you can set your configurables as environment variables:
```bash
export IS_TEST_ON_LIVE_SERVER=false
export CHARITYCHECKPDF_API_KEY="<CANDID_SUBSCRIPTION_KEY>"
```

Then, run the following command to run the tests:
```bash
   ./gradlew clean test
```

## Running tests against Candid API

### Prerequisites

Refer to the set up guide in [ReadMe](../../../../README.md) for necessary credentials.

#### Using a Config.toml file

Create a `Config.toml` file in the tests directory and add your configurables:
```toml
isTestOnLiveServer = true
apiKey="<CANDID_SUBSCRIPTION_KEY>"
```

#### Using environment variables

Alternatively, you can set your authentication credentials as environment variables:
```bash
export IS_TEST_ON_LIVE_SERVER=true
export CHARITYCHECKPDF_API_KEY="<CANDID_SUBSCRIPTION_KEY>"
```

Then, run the following command to run the tests:
```bash
   ./gradlew clean test"
```
