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

import ballerina/http;

# Enhance your apps, records, or experience with robust nonprofit profile financials, people, DEI, and IRS compliance validation.
public isolated client class Client {
    final http:Client clientEp;
    final readonly & ApiKeysConfig apiKeyConfig;
    # Gets invoked to initialize the `connector`.
    #
    # + apiKeyConfig - API keys for authorization 
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ApiKeysConfig apiKeyConfig, ConnectionConfig config =  {}, string serviceUrl = "https://api.candid.org/premier") returns error? {
        http:ClientConfiguration httpClientConfig = {httpVersion: config.httpVersion, http1Settings: config.http1Settings, http2Settings: config.http2Settings, timeout: config.timeout, forwarded: config.forwarded, followRedirects: config.followRedirects, poolConfig: config.poolConfig, cache: config.cache, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, cookieConfig: config.cookieConfig, responseLimits: config.responseLimits, secureSocket: config.secureSocket, proxy: config.proxy, socketConfig: config.socketConfig, validation: config.validation, laxDataBinding: config.laxDataBinding};
        self.clientEp = check new (serviceUrl, httpClientConfig);
        self.apiKeyConfig = apiKeyConfig.cloneReadOnly();
    }

    # /premier/v1
    #
    # + ein - Employer Identification Number
    # + headers - Headers to be sent with the request 
    # + return - OK 
    # 
    # # Deprecated
    @deprecated
    resource isolated function get v1/[string ein](map<string|string[]> headers = {}) returns V1PublicProfile|error {
        string resourcePath = string `/v1/${getEncodedUri(ein)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /premier/v1/propdf
    #
    # + ein - Employer Identification Number
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get v1/propdf/[string ein](map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/v1/propdf/${getEncodedUri(ein)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /premier/v1/ftapdf
    #
    # + ein - Employer Identification Number
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get v1/ftapdf/[string ein](map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/v1/ftapdf/${getEncodedUri(ein)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /premier/v2
    #
    # + ein - Employer Identification Number
    # + headers - Headers to be sent with the request 
    # + return - OK 
    # 
    # # Deprecated
    @deprecated
    resource isolated function get v2/[string ein](map<string|string[]> headers = {}) returns V2PublicProfile|error {
        string resourcePath = string `/v2/${getEncodedUri(ein)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }

    # /premier/v3
    #
    # + ein - Employer Identification Number
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function get v3/[string ein](map<string|string[]> headers = {}) returns V3PublicProfile|error {
        string resourcePath = string `/v3/${getEncodedUri(ein)}`;
        map<anydata> headerValues = {...headers};
        headerValues["Subscription-Key"] = self.apiKeyConfig.subscriptionKey;
        map<string|string[]> httpHeaders = http:getHeaderMap(headerValues);
        return self.clientEp->get(resourcePath, httpHeaders);
    }
}
