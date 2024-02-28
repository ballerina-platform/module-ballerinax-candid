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

// Essentials Mock Service Related Types
type Query record {
    string? search_terms?;
};

type EssentialsOkayResponse record {
    EssentialsResponse_data? data?;
};

type EssentialsResponse_data record {
    EssentialsResponse_data_hits[]? hits?;
};

type EssentialsResponse_data_hits record {
    string? organization_id?;
};

type V3EssentialsOkayResponse record {
    EssentialsResponse_data_hits[]? hits?;
};

type EssentialsLookupOkayResponse record {
    string[]? data?;
};

type EssentialsFilteredLookupOkayResponse record {
    EssentialsFilteredLookupResponse_data[]? data?;
};

type EssentialsFilteredLookupResponse_data record {
    string? 'key?;
};

// Premier Mock Service Related Types
type PublicProfileOkayResponse record {
    V3PublicProfile_data? data?;
};

type V3PublicProfile_data record {
    Summary3? summary?;
};

type Summary3 record {
    string? ein?;
};
