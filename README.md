# Ballerina Candid Connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/ci.yml)
[![Trivy](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/trivy-scan.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/trivy-scan.yml)
[![codecov](https://codecov.io/gh/ballerina-platform/module-ballerinax-candid/branch/master/graph/badge.svg)](https://codecov.io/gh/ballerina-platform/module-ballerinax-candid)
[![GraalVM Check](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/build-with-bal-test-graalvm.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/build-with-bal-test-graalvm.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-candid.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/candid.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Fcandid)

[Candid](https://candid.org/) is a non-profit organization that provides a comprehensive database of information about nonprofits, foundations, grantmakers, and philanthropists. Their mission is to connect people who want to change the world to the resources they need to do it.

This Ballerina connector is designed to interface with Candid.org's API, enabling developers to access Candid's resources programmatically. It supports various operations, such as searching for nonprofit organizations, accessing grant data, and retrieving information about philanthropic trends and insights.

Currently, the following Candid APIs are supported through this module

- **Charity Check PDF API**
  - The Charity Check PDF API is a powerful tool that allows to download formatted Charity Check PDF reports for individual nonprofits.
- **Essentials API**
  - The Essentials API is a lightweight API that provides basic information about nonprofits, such as their name, address, EIN, and mission statement. It is ideal for applications that need to quickly and easily identify and access basic nonprofit data.
- **Premier API**
  - The Premier API is a more comprehensive API that provides access to a wider range of nonprofit data, including financial information, staffing data, grantmaking data, and DEI data. It is ideal for applications that need to deep dive into the data of individual nonprofits or perform complex analyses of nonprofit data.

## Setup Guide
To use the Candid.org Connector in Ballerina, you must first obtain an API key from Candid.org.

### Step 1: Visit Candid's Developer API Access page
1. Visit [Candid's Developer API Access](https://developer.candid.org/reference/getting-access) page.
2. Review the documentation to understand the type of access suits your need.

### Step 2: Request API Access
- **For a Trial Account:** If you're looking for trial access to explore Candid's API, complete the [form](https://info.candid.org/API-free-trial) to request trial access. Candid.org will review your request and get in touch with you regarding your trial API key.

    <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-candid/master/docs/setup/resources/1-trial-account-form.png alt="Candid API Access Form" width="50%">

- **For a Production Account:** If you require access for production use, fill out the [form](https://info.candid.org/API-info-request) to initiate the process. Candid.org will contact you to discuss your needs and provide you with a production API key.

    <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-candid/master/docs/setup/resources/2-prod-account-form.png alt="Candid API Access Form" width="50%">

## Quickstart

To use the `Candid` connector in your Ballerina application, modify the `.bal` file as follows:

### Step 1: Import the connector

Import the relevent Candid module into your Ballerina project.

#### Charity Check PDF API
```ballerina
import ballerinax/candid.charitycheckpdf;
```

#### Essentials API
```ballerina
import ballerinax/candid.essentials;
```

#### Premier API
```ballerina
import ballerinax/candid.premier;
```

### Step 2: Instantiate a new connector

Create an instance of `ApiKeysConfig` with the obtained Subscription Key and initialize the connector with it.

#### Charity Check PDF API
```ballerina
charitycheckpdf:ApiKeysConfig apiKeyConfig = {
    subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"
};
charitycheckpdf:Client charitycheckpdf = check new (apiKeyConfig);
```

#### Essentials API
```ballerina
essentials:ApiKeysConfig apiKeyConfig = {
    subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"
};
essentials:Client essentials = check new (apiKeyConfig);
```

#### Premier API
```ballerina
premier:ApiKeysConfig apiKeyConfig = {
    subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"
};
premier:Client premier = check new (apiKeyConfig);
```

### Step 3: Invoke the connector operation

Now, utilize the available connector operations.

#### Charity Check PDF API
The following Ballerina program generates a PDF report to validate nonprofit status and eligibility with a 100% IRS-compliant charity check.

```ballerina
http:Response|error result = charitycheckpdf->/v1/pdf/["EMP-ID-NUM"];
    return result;
```

#### Essentials API
The following Ballerina program finds nonprofits using search criterias and explore essential information.

```ballerina
essentials:V3Query query = {
    search_terms: "candid"
};
essentials:V3EssentialsResponse|error result = essentials->/v3.post(query);
```

#### Premier API
The following Ballerina program retrieves data on a nonprofit's financials, people, DEI, and IRS compliance validation for the given employer id number.

```ballerina
premier:V3PublicProfile|error result = check premier->/v3/["EMP-ID-NUM"];
```

## Examples

The `Candid` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-candid/tree/master/examples) to understand how to interact with the Candid.org API for tasks such as generating compliance reports, searching for essential nonprofit information, and retrieving detailed employer data. 

1. [Generate Charity Check PDF](https://github.com/ballerina-platform/module-ballerinax-candid/tree/master/examples/generate-charity-check-pdf) - Generate a detailed Charity Check PDF for a specified nonprofit organization using Candid.org's API.

2. [Search Essential Information](https://github.com/ballerina-platform/module-ballerinax-candid/tree/master/examples/search-essential-information) - Search for and retrieve essential information about nonprofit organizations through the Candid.org Essentials API.

3. [Get Employer Information](https://github.com/ballerina-platform/module-ballerinax-candid/tree/master/examples/get-employer-information) - Obtain comprehensive employer information for nonprofit organizations using the Candid.org Premier API.

## Issues and projects

The **Issues** and **Projects** tabs are disabled for this repository as this is part of the Ballerina library. To report bugs, request new features, start new discussions, view project boards, etc., visit the Ballerina library [parent repository](https://github.com/ballerina-platform/ballerina-library).

This repository only contains the source code for the package.

## Build from the source

### Prerequisites

1. Download and install Java SE Development Kit (JDK) version 17. You can download it from either of the following sources:

   * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
   * [OpenJDK](https://adoptium.net/)

    > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

    > **Note**: Ensure that the Docker daemon is running before executing any tests.

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environment:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`candid` package](https://lib.ballerina.io/ballerinax/candid/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
