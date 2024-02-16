## Overview

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
