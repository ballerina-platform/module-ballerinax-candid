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
    # /premier/v1
    #
    # + ein - Employer Identification Number.
    # + return - OK 
    # 
    # # Deprecated
    @deprecated
    resource isolated function get v1/[string ein]() returns V1PublicProfile|error {
        string resourcePath = string `/v1/${getEncodedUri(ein)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        V1PublicProfile response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /premier/v1/propdf
    #
    # + ein - Employer Identification Number.
    # + return - OK 
    resource isolated function get v1/propdf/[string ein]() returns http:Response|error {
        string resourcePath = string `/v1/propdf/${getEncodedUri(ein)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        http:Response response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /premier/v1/ftapdf
    #
    # + ein - Employer Identification Number.
    # + return - OK 
    resource isolated function get v1/ftapdf/[string ein]() returns http:Response|error {
        string resourcePath = string `/v1/ftapdf/${getEncodedUri(ein)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        http:Response response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /premier/v2
    #
    # + ein - Employer Identification Number.
    # + return - OK 
    # 
    # # Deprecated
    @deprecated
    resource isolated function get v2/[string ein]() returns V2PublicProfile|error {
        string resourcePath = string `/v2/${getEncodedUri(ein)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        V2PublicProfile response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
    # /premier/v3
    #
    # + ein - Employer Identification Number.
    # + return - OK 
    resource isolated function get v3/[string ein]() returns V3PublicProfile|error {
        string resourcePath = string `/v3/${getEncodedUri(ein)}`;
        map<any> headerValues = {"Subscription-Key": self.apiKeyConfig.subscriptionKey};
        map<string|string[]> httpHeaders = getMapForHeaders(headerValues);
        V3PublicProfile response = check self.clientEp->get(resourcePath, httpHeaders);
        return response;
    }
}
