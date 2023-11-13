// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/log;
import ballerina/test;
import ballerina/io;

configurable ApiKeysConfig & readonly apiKeyConfig = ?;
Client essentialsClient = check new Client(apiKeyConfig, serviceUrl = "https://api.candid.org/essentials");

@test:Config {}
function testEssentialsV1() {
}

@test:Config {}
function testEssentialsV2() {
}

@test:Config {}
function testEssentialsV3() returns error? {
    log:printInfo("essentialsClient -> testEssentialsV3()");
    V3Query query = {
        search_terms: "13-1837418"
    };
    V3EssentialsResponse result = check essentialsClient->/v3.post(query);
    io:println(result);
}

@test:Config {}
function testEssentialsLookup() {
}

@test:Config {}
function testEssentialsLookupFilterName() {
}

@test:Config {}
isolated function  testEssentialsLookupFilterNameKeyOrValue() {
}