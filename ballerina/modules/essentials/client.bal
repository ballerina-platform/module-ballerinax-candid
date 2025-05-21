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

import ballerina/data.jsondata;
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
        http:ClientConfiguration httpClientConfig = {httpVersion: config.httpVersion, http1Settings: config.http1Settings, http2Settings: config.http2Settings, timeout: config.timeout, forwarded: config.forwarded, followRedirects: config.followRedirects, poolConfig: config.poolConfig, cache: config.cache, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, cookieConfig: config.cookieConfig, responseLimits: config.responseLimits, secureSocket: config.secureSocket, proxy: config.proxy, socketConfig: config.socketConfig, validation: config.validation, laxDataBinding: config.laxDataBinding};
        self.clientEp = check new (serviceUrl, httpClientConfig);
        self.apiKeyConfig = apiKeyConfig.cloneReadOnly();
    }

    # /essentials/v1
    #
    # + headers - Headers to be sent with the request 
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation 
    # + return - OK 
    resource isolated function post v1(Query payload, map<string|string[]> headers = {}) returns V1EssentialsResponse|error {
        string resourcePath = string `/v1`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, httpHeaders);
    }

    # /essentials/v2
    #
    # + headers - Headers to be sent with the request 
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation 
    # + return - OK 
    resource isolated function post v2(Query payload, map<string|string[]> headers = {}) returns V2EssentialsResponse|error {
        string resourcePath = string `/v2`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, httpHeaders);
    }

    # /essentials/v3
    #
    # + headers - Headers to be sent with the request 
    # + payload - Below JSON request body is an example showing all available elements. Please use the examples from the API Documentation 
    # + return - OK 
    resource isolated function post v3(V3Query payload, map<string|string[]> headers = {}) returns V3EssentialsResponse|error {
        string resourcePath = string `/v3`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, httpHeaders);
    }

    # /essentials/lookup
    #
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get lookup(map<string|string[]> headers = {}) returns EssentialsLookupResponse|error {
        string resourcePath = string `/lookup`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /essentials/lookup/{filter_name}
    #
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get lookup/[string filterName](map<string|string[]> headers = {}) returns EssentialsFilteredLookupResponse|error {
        string resourcePath = string `/lookup/${getEncodedUri(filterName)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /essentials/lookup/{filter_name}/{key_or_value}
    #
    # + filterName - A list of all filters that can be used in Essentials endpoints. Found in the response of /essentials/lookup
    # + keyOrValue - Key of filterable items. Found in the response of /essentials/lookup/{filter_name}
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get lookup/[string filterName]/[string keyOrValue](map<string|string[]> headers = {}) returns EssentialsFilteredLookupResponse|error {
        string resourcePath = string `/lookup/${getEncodedUri(filterName)}/${getEncodedUri(keyOrValue)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }
}
