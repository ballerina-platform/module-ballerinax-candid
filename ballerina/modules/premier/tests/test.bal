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
configurable string apiKey = os:getEnv("PREMIER_API_KEY");

const EIN = "13-1837418";

ApiKeysConfig apiKeyConfig = {
    subscriptionKey: apiKey
};

Client premier = test:mock(Client);

@test:BeforeSuite
function initializeClient() returns error? {
    if isTestOnLiveServer {
        log:printInfo("Initializing client for Candid server");
        premier = check new (apiKeyConfig, serviceUrl = "https://api.candid.org/premier");
    } else {
        log:printInfo("Initializing client for mock server");
        premier = check new (
            apiKeyConfig = {
                subscriptionKey: "6006e88b7fc2e0c31fbcb744cca10cafa280341758cd1db45fc1b29b05305dc0"
            },
            serviceUrl = "http://localhost:9090/premier"
        );
    }
}

@test:Config
function testPremierV1Propdf() returns error? {
    log:printInfo("premier -> testPremierV1Propdf()");
    http:Response result = check premier->/v1/propdf/[EIN];
    test:assertEquals(result.getContentType(), "application/pdf");
}

@test:Config
function testPremierV1ftapdf() returns error? {
    log:printInfo("premier -> testPremierV1ftapdf()");
    http:Response result = check premier->/v1/ftapdf/[EIN];
    test:assertEquals(result.getContentType(), "application/pdf");
}

@test:Config
function testPremierV3() returns error? {
    log:printInfo("premier -> testPremierV3()");
    V3PublicProfile result = check premier->/v3/[EIN];
    V3PublicProfile_data? data = result?.data;
    if data is V3PublicProfile_data {
        Summary3? summary = data?.summary;
        if summary is Summary3 {
            test:assertEquals(summary?.ein, EIN);
        } else {
            test:assertFail();
        }
    } else {
        test:assertFail();
    }
}
