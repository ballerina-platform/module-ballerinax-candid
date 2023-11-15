## Overview

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
