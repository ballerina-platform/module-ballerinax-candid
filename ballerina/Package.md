## Package Overview

Candid.org is a non-profit organization that provides a comprehensive database of information about nonprofits, foundations, grantmakers, and philanthropists. Their mission is to connect people who want to change the world to the resources they need to do it.

The `ballerinax/candid` package provides APIs to allow to access Candid's database that includes information on over 2 million nonprofits, including their mission, programs, finances, and leadership. And also provides information on over 100,000 foundations and grantmakers, as well as data on individual philanthropists.

Currently, the following Candid.org APIs are supported through this package

- Charity Check PDF API
  - The Charity Check PDF API is a powerful tool that allows to download formatted Charity Check PDF reports for individual nonprofits.
- Essentials API
  - The Essentials API is a lightweight API that provides basic information about nonprofits, such as their name, address, EIN, and mission statement. It is ideal for applications that need to quickly and easily identify and access basic nonprofit data.
- Premier API
  - The Premier API is a more comprehensive API that provides access to a wider range of nonprofit data, including financial information, staffing data, grantmaking data, and DEI data. It is ideal for applications that need to deep dive into the data of individual nonprofits or perform complex analyses of nonprofit data.

The following sections provide details on how to use the JMS connector.
 
 - [Samples](#samples)

## Samples

### Charity Check PDF API

The following Ballerina program returns `http:Response` for a PDF document.

```ballerina
import ballerinax/candid.charitycheckpdf;

charitycheckpdf:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
charitycheckpdf:Client charitycheckpdfClient = check new charitycheckpdf:Client(apiKeyConfig);

function getCharityCheckPDF() returns http:Response|error {
    http:Response|error result = charitycheckpdfClient->/v1/pdf/["EMP-ID-NUM"];
    return result;
}
```

### Essentials API

The following Ballerina program returns `V3EssentialsResponse` that contains basic information about nonprofits.

```ballerina
import ballerinax/candid.essentials;

essentials:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
essentials:Client essentialsClient = check new essentials:Client(apiKeyConfig);

function getV3Essesntials() returns essentials:V3EssentialsResponse|error {
    essentials:V3Query query = {
        search_terms: "13-1837418"
    };
    essentials:V3EssentialsResponse|error result = essentialsClient->/v3.post(query);
    return result;
}
```

### Premier API

The following Ballerina program returns `V3PublicProfile` that contains comprehensive information about nonprofits.

```ballerina
import ballerinax/candid.premier;

premier:ApiKeysConfig apiKeyConfig = {subscriptionKey: "ENTER-THE-SUBSCRIPTION-KEY"};
premier:Client premierClient = check new premier:Client(apiKeyConfig);

function getV3Premier() returns V3PublicProfile|error {
    premier:V3PublicProfile|error result = check premierClient->/v3/["EMP-ID-NUM"];
    return result;
}
```
