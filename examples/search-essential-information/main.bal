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

import ballerina/os;
import ballerinax/candid.essentials;

configurable string subscriptionKey = os:getEnv("SUBSCRIPTION_KEY");

// Candid API Key Configurations
essentials:ApiKeysConfig apiKeyConfig = {
    subscriptionKey: subscriptionKey
};
essentials:Client essentials = check new (apiKeyConfig);

function getV3Essesntials() returns essentials:V3EssentialsResponse|error {
    essentials:V3Query query = {
        search_terms: "candid"
    };
    essentials:V3EssentialsResponse|error result = essentials->/v3.post(query);
    return result;
}
