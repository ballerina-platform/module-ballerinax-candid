# Examples

The `Candid` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-candid/tree/main/examples) to understand how to interact with the Candid.org API for tasks such as generating compliance reports, searching for essential nonprofit information, and retrieving detailed employer data. 

1. [Generate Charity Check PDF](https://github.com/ballerina-platform/module-ballerinax-candid/tree/main/examples/generate-charity-check-pdf) - Generate a detailed Charity Check PDF for a specified nonprofit organization using Candid.org's API.

2. [Search Essential Information](https://github.com/ballerina-platform/module-ballerinax-candid/tree/main/examples/search-essential-information) - Search for and retrieve essential information about nonprofit organizations through the Candid.org Essentials API.

3. [Get Employer Information](https://github.com/ballerina-platform/module-ballerinax-candid/tree/main/examples/get-employer-information) - Obtain comprehensive employer information for nonprofit organizations using the Candid.org Premier API.

## Prerequisites

1. Follow the [instructions](https://github.com/ballerina-platform/module-ballerinax-candid#setup-guide) to set up the Candid API.

2. For each example, create a `config.toml` file with your Candid Subscription Key. Here's an example of how your `config.toml` file should look:

    ```toml
    subscriptionKey="<CANDID_SUBSCRIPTION_KEY>"
    ```

## Running an Example

Execute the following commands to build an example from the source.

* To build an example

  `bal build <example-name>`


* To run an example

  `bal run <example-name>`

## Building the Examples with the Local Module

**Warning**: Because of the absence of support for reading local repositories for single Ballerina files, the bala of
the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your
local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally.

* To build all the examples

  `./build.sh build`


* To run all the examples

  `./build.sh run`
