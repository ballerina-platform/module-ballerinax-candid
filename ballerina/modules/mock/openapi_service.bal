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

listener http:Listener candidEP = new (9090, config = {host: "localhost"});

// CharityCheckPDF API
service /charitycheckpdf on candidEP {
    resource function get v1/pdf/[string ein]() returns http:Response|error {
        http:Response response = new();
        check response.setContentType("application/pdf");
        return response;
    }
}

// Essentials API
service /essentials on candidEP {
    resource function post v1(Query payload) returns EssentialsOkayResponse {
        return {
            data: {
                hits: [
                    {organization_id: "0"},
                    {organization_id: "1"},
                    {organization_id: "2"},
                    {organization_id: "3"},
                    {organization_id: "4"},
                    {organization_id: "5"},
                    {organization_id: "6"},
                    {organization_id: "7"},
                    {organization_id: "8"},
                    {organization_id: "9"},
                    {organization_id: "10"},
                    {organization_id: "11"},
                    {organization_id: "12"},
                    {organization_id: "13"},
                    {organization_id: "14"},
                    {organization_id: "15"},
                    {organization_id: "16"},
                    {organization_id: "17"},
                    {organization_id: "18"},
                    {organization_id: "19"},
                    {organization_id: "20"},
                    {organization_id: "21"},
                    {organization_id: "22"},
                    {organization_id: "23"},
                    {organization_id: "24"}
                ]
            }
        };
    }

    resource function post v2(Query payload) returns EssentialsOkayResponse {
        return {
            data: {
                hits: [
                    {organization_id: "0"},
                    {organization_id: "1"},
                    {organization_id: "2"},
                    {organization_id: "3"},
                    {organization_id: "4"},
                    {organization_id: "5"},
                    {organization_id: "6"},
                    {organization_id: "7"},
                    {organization_id: "8"},
                    {organization_id: "9"},
                    {organization_id: "10"},
                    {organization_id: "11"},
                    {organization_id: "12"},
                    {organization_id: "13"},
                    {organization_id: "14"},
                    {organization_id: "15"},
                    {organization_id: "16"},
                    {organization_id: "17"},
                    {organization_id: "18"},
                    {organization_id: "19"},
                    {organization_id: "20"},
                    {organization_id: "21"},
                    {organization_id: "22"},
                    {organization_id: "23"},
                    {organization_id: "24"}
                ]
            }
        };
    }

    resource function post v3(Query payload) returns V3EssentialsOkayResponse {
        return {
            hits: [
                {organization_id: "0"},
                {organization_id: "1"},
                {organization_id: "2"},
                {organization_id: "3"},
                {organization_id: "4"},
                {organization_id: "5"},
                {organization_id: "6"},
                {organization_id: "7"},
                {organization_id: "8"},
                {organization_id: "9"},
                {organization_id: "10"},
                {organization_id: "11"},
                {organization_id: "12"},
                {organization_id: "13"},
                {organization_id: "14"},
                {organization_id: "15"},
                {organization_id: "16"},
                {organization_id: "17"},
                {organization_id: "18"},
                {organization_id: "19"},
                {organization_id: "20"},
                {organization_id: "21"},
                {organization_id: "22"},
                {organization_id: "23"},
                {organization_id: "24"}
            ]
        };
    }

    resource function get lookup() returns EssentialsLookupOkayResponse {
        return {
            data: ["ntee_major", "ntee_minor"]
        };
    }

    resource function get lookup/[string filter_name]() returns EssentialsFilteredLookupOkayResponse {
        return {
            data: [
                {'key: "C00"}]
        };
    }

    resource function get lookup/[string filter_name]/[string key_or_value]() returns EssentialsFilteredLookupOkayResponse {
        return {
            data: [
                {'key: "C00"}]
        };
    }
}

// Premier API
service /premier on candidEP {
    resource function get v1/propdf/[string ein]() returns http:Response|error {
        http:Response response = new();
        check response.setContentType("application/pdf");
        return response;
    }

    resource function get v1/ftapdf/[string ein]() returns http:Response|error {
        http:Response response = new();
        check response.setContentType("application/pdf");
        return response;
    }

    resource function get v3/[string ein]() returns PublicProfileOkayResponse {
        return {
            data: {
                summary: {
                    ein: "13-1837418"
                }
            }
        };
    }
}
