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
import ballerina/os;
import ballerina/test;

configurable boolean isTestOnLiveServer = os:getEnv("IS_TEST_ON_LIVE_SERVER") == "true";
configurable string apiKey = os:getEnv("ESSENTIALS_API_KEY");

const SEARCH_TERM = "candid";
const FILTER_NAME = "ntee_major";
const KEY_OR_VALUE = "C00";

ApiKeysConfig apiKeyConfig = {
    subscriptionKey: apiKey
};

Client essentials = test:mock(Client);

@test:BeforeSuite
function initializeClient() returns error? {
    if isTestOnLiveServer {
        log:printInfo("Initializing client for Candid server");
        essentials = check new (apiKeyConfig, serviceUrl = "https://api.candid.org/essentials");
    } else {
        log:printInfo("Initializing client for mock server");
        essentials = check new (apiKeyConfig, serviceUrl = "http://localhost:9090/essentials");
    }
}

@test:Config
function testEssentialsV1() returns error? {
    log:printInfo("essentials -> testEssentialsV1()");
    Query query = {
        searchTerms: SEARCH_TERM
    };
    V1EssentialsResponse result = check essentials->/v1.post(query);
    V1EssentialsResponseData? data = result?.data;
    if data is V1EssentialsResponseData {
        V1EssentialsResponseDataHits[]? hits = data?.hits;
        if hits is V1EssentialsResponseDataHits[] {
            test:assertEquals(hits.length(), 25);
        } else {
            test:assertFail();
        }
    } else {
        test:assertFail();
    }
}

@test:Config
function testEssentialsV2() returns error? {
    log:printInfo("essentials -> testEssentialsV2()");
    Query query = {
        searchTerms: SEARCH_TERM
    };
    V2EssentialsResponse result = check essentials->/v2.post(query);
    V2EssentialsResponseData? data = result?.data;
    if data is V2EssentialsResponseData {
        V2EssentialsResponseDataHits[]? hits = data?.hits;
        if hits is V2EssentialsResponseDataHits[] {
            test:assertEquals(hits.length(), 25);
        } else {
            test:assertFail();
        }
    } else {
        test:assertFail();
    }
}

@test:Config
function testEssentialsV3() returns error? {
    log:printInfo("essentials -> testEssentialsV3()");
    V3Query query = {
        searchTerms: SEARCH_TERM
    };
    V3EssentialsResponse result = check essentials->/v3.post(query);
    V3EssentialsResponseHits[]? hits = result?.hits;
    if hits is V3EssentialsResponseHits[] {
        test:assertEquals(hits.length(), 25);
    } else {
        test:assertFail();
    }
}

@test:Config
function testEssentialsLookup() returns error? {
    log:printInfo("essentials -> testEssentialsLookup()");
    EssentialsLookupResponse result = check essentials->/lookup;
    string[]? data = result?.data;
    if data is string[] {
        test:assertTrue(data.some(val => val == FILTER_NAME));
    } else {
        test:assertFail();
    }
}

@test:Config
function testEssentialsLookupFilterName() returns error? {
    log:printInfo("essentials -> testEssentialsLookupFilterName()");
    EssentialsFilteredLookupResponse result = check essentials->/lookup/[FILTER_NAME];
    EssentialsFilteredLookupResponseData[]? data = result?.data;
    if data is EssentialsFilteredLookupResponseData[] {
        test:assertTrue(data.some(val => val?.'key == KEY_OR_VALUE));
    } else {
        test:assertFail();
    }
}

@test:Config
function  testEssentialsLookupFilterNameKeyOrValue() returns error? {
    log:printInfo("essentials -> testEssentialsLookupFilterNameKeyOrValue()");
    EssentialsFilteredLookupResponse result = check essentials->/lookup/[FILTER_NAME]/[KEY_OR_VALUE];
    EssentialsFilteredLookupResponseData[]? data = result?.data;
    if data is EssentialsFilteredLookupResponseData[] {
        test:assertTrue(data.some(val => val?.'key == KEY_OR_VALUE));
    } else {
        test:assertFail();
    }
}
