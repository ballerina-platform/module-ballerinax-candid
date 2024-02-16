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
import ballerina/test;

const EIN = "13-1837418";

Client charityCheckPDFForMockServer = test:mock(Client);

@test:BeforeGroups {
    value: ["mock"]
}
function initializeClientsForMockServer() returns error? {
    log:printInfo("Initializing client for mock server");
    charityCheckPDF = check new (
        apiKeyConfig = {
            subscriptionKey: "6006e88b7fc2e0c31fbcb744cca10cafa280341758cd1db45fc1b29b05305dc0"
        },
        serviceUrl = "http://localhost:9090/charitycheckpdf"
    );
}

@test:Config {
    groups: ["mock"]
}
function testCharitycheckpdfMock() returns error? {
    log:printInfo("charityCheckPDFForMockServer -> testCharitycheckpdfMock()");
    http:Response result = check charityCheckPDF->/v1/pdf/[EIN];
    test:assertEquals(result.getContentType(), "application/pdf");
}
