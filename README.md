# Ballerina Candid Connector

[![CI](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/ballerina-platform/module-ballerinax-candid/branch/master/graph/badge.svg)](https://codecov.io/gh/ballerina-platform/module-ballerinax-candid)
[![GraalVM Check](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/build-with-bal-test-graalvm.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/actions/workflows/build-with-bal-test-graalvm.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-candid.svg)](https://github.com/ballerina-platform/module-ballerinax-candid/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/candid.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Fcandid)

[Candid](https://candid.org/) is a non-profit organization that provides a comprehensive database of information about nonprofits, foundations, grantmakers, and philanthropists. Their mission is to connect people who want to change the world to the resources they need to do it.

The `ballerinax/candid` module provides APIs to allow to access Candid's database that includes information on over 2 million nonprofits, including their mission, programs, finances, and leadership. And also provides information on over 100,000 foundations and grantmakers, as well as data on individual philanthropists.

Currently, the following Candid APIs are supported through this module

- Charity Check PDF API
  - The Charity Check PDF API is a powerful tool that allows to download formatted Charity Check PDF reports for individual nonprofits.
- Essentials API
  - The Essentials API is a lightweight API that provides basic information about nonprofits, such as their name, address, EIN, and mission statement. It is ideal for applications that need to quickly and easily identify and access basic nonprofit data.
- Premier API
  - The Premier API is a more comprehensive API that provides access to a wider range of nonprofit data, including financial information, staffing data, grantmaking data, and DEI data. It is ideal for applications that need to deep dive into the data of individual nonprofits or perform complex analyses of nonprofit data.

## Samples

### Charity Check PDF API

The following Ballerina program generates a PDF report to validate nonprofit status and eligibility with a 100% IRS-compliant charity check.

```ballerina
import ballerinax/candid.charitycheckpdf;

charitycheckpdf:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
charitycheckpdf:Client charitycheckpdf = check new charitycheckpdf:Client(apiKeyConfig);

function getCharityCheckPDF() returns http:Response|error {
    http:Response|error result = charitycheckpdf->/v1/pdf/["EMP-ID-NUM"];
    return result;
}
```

### Essentials API

The following Ballerina program finds nonprofits using search criterias and explore essential information.

```ballerina
import ballerinax/candid.essentials;

essentials:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
essentials:Client essentials = check new essentials:Client(apiKeyConfig);

function getV3Essesntials() returns essentials:V3EssentialsResponse|error {
    essentials:V3Query query = {
        search_terms: "13-1837418"
    };
    essentials:V3EssentialsResponse|error result = essentials->/v3.post(query);
    return result;
}
```

### Premier API

The following Ballerina program retrieves data on a nonprofit's financials, people, DEI, and IRS compliance validation for the given employer id number.

```ballerina
import ballerinax/candid.premier;

premier:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
premier:Client premier = check new premier:Client(apiKeyConfig);

function getV3Premier() returns V3PublicProfile|error {
    premier:V3PublicProfile|error result = check premier->/v3/["EMP-ID-NUM"];
    return result;
}
```

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
   ```
   ./gradlew clean build
   ```

2. To run the tests:
   ```
   ./gradlew clean test
   ```

3. To build the without the tests:
   ```
   ./gradlew clean build -x test
   ```

5. To debug package with a remote debugger:
   ```
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:
   ```
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:
    ```
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:
   ```
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
