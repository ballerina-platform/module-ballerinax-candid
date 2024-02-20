// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import candid.mock as _;

import ballerina/log;
import ballerina/http;
import ballerina/os;
import ballerina/test;

configurable boolean isTestOnLiveServer = os:getEnv("IS_TEST_ON_LIVE_SERVER") == "true";
configurable string apiKey = os:getEnv("CHARITYCHECKPDF_API_KEY");

const EIN = "13-1837418";

ApiKeysConfig apiKeyConfig = {
    subscriptionKey: apiKey
};

Client charityCheckPDF = test:mock(Client);

@test:BeforeSuite
function initializeClient() returns error? {
    if isTestOnLiveServer {
        log:printInfo("Initializing client for Candid server");
        charityCheckPDF = check new (apiKeyConfig, serviceUrl = "https://apidata.guidestar.org/charitycheckpdf");
    } else {
        log:printInfo("Initializing client for mock server");
        charityCheckPDF = check new (apiKeyConfig, serviceUrl = "http://localhost:9090/charitycheckpdf");
    }
}

@test:Config
function testCharitycheckpdf() returns error? {
    log:printInfo("charityCheckPDF -> testCharitycheckpdf()");
    http:Response result = check charityCheckPDF->/v1/pdf/[EIN];
    test:assertEquals(result.getContentType(), "application/pdf");
}
