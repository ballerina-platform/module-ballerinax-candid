// Copyright (c) 2023 WSO2 LLC. (http://www.wso2.org) All Rights Reserved.
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

import ballerina/http;

# Search GuideStar’s most common set of data about nonprofits to quickly find organizations most relevant to your users, and use those results to get more data from our other APIs. API returns search result in JSON format.
public isolated client class Client {
    final http:Client clientEp;
    final readonly & ApiKeysConfig apiKeyConfig;
    # Gets invoked to initialize the `connector`.
    #
    # + apiKeyConfig - API keys for authorization 
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ApiKeysConfig apiKeyConfig, ConnectionConfig config =  {}, string serviceUrl = "https://api.candid.org/essentials") returns error? {
        http:ClientConfiguration httpClientConfig = {httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        do {
            if config.http1Settings is ClientHttp1Settings {
                ClientHttp1Settings settings = check config.http1Settings.ensureType(ClientHttp1Settings);
                httpClientConfig.http1Settings = {...settings};
            }
            if config.http2Settings is http:ClientHttp2Settings {
                httpClientConfig.http2Settings = check config.http2Settings.ensureType(http:ClientHttp2Settings);
            }
            if config.cache is http:CacheConfig {
                httpClientConfig.cache = check config.cache.ensureType(http:CacheConfig);
            }
            if config.responseLimits is http:ResponseLimitConfigs {
                httpClientConfig.responseLimits = check config.responseLimits.ensureType(http:ResponseLimitConfigs);
            }
            if config.secureSocket is http:ClientSecureSocket {
                httpClientConfig.secureSocket = check config.secureSocket.ensureType(http:ClientSecureSocket);
            }
            if config.proxy is http:ProxyConfig {
                httpClientConfig.proxy = check config.proxy.ensureType(http:ProxyConfig);
            }
        }
        http:Client httpEp = check new (serviceUrl, httpClientConfig);
        self.clientEp = httpEp;
        self.apiKeyConfig = apiKeyConfig.cloneReadOnly();
        return;
    }
    # /essentials/v1
    #
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation.
    # + return - OK 
    resource isolated function post v1(Query payload) returns V1EssentialsResponse|error {
        string resourcePath = string `/v1`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        V1EssentialsResponse response = check self.clientEp->post(resourcePath, request, httpHeaders);
        return response;
    }
    # /essentials/v2
    #
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation.
    # + return - OK 
    resource isolated function post v2(Query payload) returns V2EssentialsResponse|error {
        string resourcePath = string `/v2`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        V2EssentialsResponse response = check self.clientEp->post(resourcePath, request, httpHeaders);
        return response;
    }
    # /essentials/v3
    #
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation.
    # + return - OK 
    resource isolated function post v3(V3Query payload) returns V3EssentialsResponse|error {
        string resourcePath = string `/v3`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        V3EssentialsResponse response = check self.clientEp->post(resourcePath, request, httpHeaders);
        return response;
    }
    # /essentials/lookup
    #
    # + return - OK 
    resource isolated function get lookup() returns EssentialsLookupResponse|error {
        string resourcePath = string `/lookup`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        EssentialsLookupResponse response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /essentials/lookup/{filter_name}
    #
    # + return - OK 
    resource isolated function get lookup/[string filter_name]() returns EssentialsFilteredLookupResponse|error {
        string resourcePath = string `/lookup/${getEncodedUri(filter_name)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        EssentialsFilteredLookupResponse response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /essentials/lookup/{filter_name}/{key_or_value}
    #
    # + filter_name - A list of all filters that can be used in Essentials endpoints. Found in the response of /essentials/lookup.
    # + key_or_value - Key of filterable items. Found in the response of /essentials/lookup/{filter_name}
    # + return - OK 
    resource isolated function get lookup/[string filter_name]/[string key_or_value]() returns EssentialsFilteredLookupResponse|error {
        string resourcePath = string `/lookup/${getEncodedUri(filter_name)}/${getEncodedUri(key_or_value)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        EssentialsFilteredLookupResponse response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
}
