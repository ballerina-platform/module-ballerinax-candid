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

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
public type ApiKeysConfig record {|
    string subscriptionKey;
|};

public type V3EssentialsResponse_taxonomies_ntee_codes record {
    # National Taxonomy of Exempt Entities
    string? ntee_code?;
    # Description of NTEE code
    string? ntee_code_description?;
};

public type V3EssentialsResponse_taxonomies_foundation_code record {
    # Foundation code that describes the organization
    string? foundation_code?;
    # Description of foundation code
    string? foundation_code_description?;
};

public type Query record {
    # Can be any string you'd like to search on, including EIN, organization name, keywords, etc.
    string? search_terms?;
    # The offset from the first result. Defaults to 0.
    int? 'from?;
    # The maximum number of hits to be returned. Defaults to 25. The maximum number allowed is 25.
    int? size?;
    Sort? sort?;
    Filters? filters?;
};

public type OrganizationFilter record {
    # GuideStar seal levels, comma separated.
    string[]? profile_levels?;
    # National Taxonomy of Exempt Entities (NTEE) major codes, comma separated.
    string[]? ntee_major_codes?;
    # National Taxonomy of Exempt Entities (NTEE) minor codes, comma separated.
    string[]? ntee_minor_codes?;
    # IRS subsection codes and/or descriptions, comma separated.
    string[]? subsection_codes?;
    # Foundation codes and/or descriptions, comma separated.
    string[]? foundation_codes?;
    # Flag indicating the organization has the most recent IRS BMF. Defaults to null. Otherwise true or false.
    boolean? bmf_status?;
    # Flag indicating the organization is pub78 verified. Value set as true or false.
    boolean? pub78_verified?;
    AffiliationTypeFilter? affiliation_type?;
    SpecificExclusionsFilter? specific_exclusions?;
    NumberRangeFilter? number_of_employees_range?;
    IrsFormTypesFilter? form_types?;
    AuditsFilter? audits?;
};

public type V3FinancialsFilter record {
    V3FinancialsFilter_most_recent_year? most_recent_year?;
    # Flag indicating the organization is required to file a 990-T. Value set as true or false.
    boolean? required_to_file_990t?;
    # Flag indicating the organization performed A-133 audit. Value set as true or false.
    boolean? a_133_audit_performed?;
};

public type V3OrgProperties record {
    # Flag indicating the organization has the most recent IRS BMF. Defaults to null. Otherwise true or false.
    boolean? bmf_status?;
    # Flag indicating the organization is pub78 verified. Value set as true or false.
    boolean? pub78_verified?;
    # Flag indicating the organization allows online giving. Value set as true or false.
    boolean? allow_online_giving?;
    # Flag indicating the organization has submitted demographics information. Value set as true or false.
    boolean? dei_submitted?;
    # Flag to exclude revoked organizations. Value set as true or false.
    boolean? exclude_revoked_organizations?;
    # Flag to exclude defunct or merged organizations. Value set as true or false.
    boolean? exclude_defunct_or_merged_organizations?;
    AffiliationTypeFilter? relationship_type?;
};

public type NumberRangeFilter record {
    # Minimum number
    int? min?;
    # Maximum number
    int? max?;
};

public type GeographyFilter record {
    string[]? state?;
    # Five digit ZIP code
    string? zip?;
    # Radius from the specified ZIP code in miles. Allowed range is between 1 and 50 miles. Values exceeding 50 will default to a radius of 50 miles.
    int? radius?;
    string[]? msa?;
    string[]? city?;
    string[]? county?;
};

public type IrsFormTypesFilter record {
    # Flag indicating the organization files a form 990. Value set as true or false.
    boolean? f990?;
    # Flag indicating the organization files a form 990-PF. Value set as true or false.
    boolean? f990pf?;
    # Flag indicating the organization files a form 990 EZ. Value set as true or false.
    boolean? f990ez?;
    # Flag indicating the organization files a form 990N. Value set as true or false.
    boolean? f990n?;
    # Flag indicating the organization is required to file a 990-T. Value set as true or false.
    boolean? required_to_file_990t?;
};

public type V3EssentialsResponse_geography record {
    # Address line 1 of the organization
    string? address_line_1?;
    # Address line 2 of the organization
    string? address_line_2?;
    # City of the organization's address
    string? city?;
    # State (Abbreviation) of the organization's address
    string? state?;
    # Zip code of the organization's address
    decimal|string? zip?;
    # Metropolitan statistical area of the organization's adresss
    string? msa?;
    # Congressional district of the organization's address
    string? congressional_district?;
    # County of the organization's address
    string? county?;
    # latitude of the organization's adress
    decimal? latitude?;
    # longitude of the organization's adress
    decimal? longitude?;
};

public type V3EssentialsResponse_properties_relationship_type record {
    # If the organization is a parent
    boolean? parent?;
    # If the organization is a subordinate
    boolean? subordinate?;
    # If the organization is independent
    boolean? independent?;
    # If the organization is a national headquarter
    boolean? headquarters?;
};

public type Filters record {
    GeographyFilter? geography?;
    OrganizationFilter? organization?;
    FinancialsFilter? financials?;
};

public type V3FinancialsFilter_most_recent_year record {
    V3FinancialsFilter_most_recent_year_form_types? form_types?;
    NumberRangeFilter? total_revenue?;
    NumberRangeFilter? total_expenses?;
    NumberRangeFilter? total_assets?;
};

public type V3EssentialsResponse_financials record {
    V3EssentialsResponse_financials_most_recent_year? most_recent_year?;
    # Gross receipts of the organization reported on the BMF
    decimal? bmf_gross_receipts?;
    # Assets of the organization reported on the BMF
    decimal? bmf_assets?;
    # Flag indicating the organization is required to file a 990-T.
    boolean? required_to_file_990t?;
    # Flag indicating the organization performed A-133 audit.
    boolean? a_133_audit_performed?;
};

public type Sort record {
    # Leave blank to sort by relevance.
    "organization_name"|"bmf_gross_receipts"|"bmf_assets" sort_by?;
    # Default value is true (ascending). Set to false to sort by descending value.
    boolean? 'ascending?;
};

public type LastUpdated record {
    # A filter, along with end_date, defines a range on date_type, in the format yyyy-MM-ddTHH:mm:ss.
    string? start_date?;
    # A filter, along with start_date, defines a range on date_type, in the format yyyy-MM-ddTHH:mm:ss.
    string? end_date?;
    # A filter, to specify updates made to a organization over the specified end_date and start_date.
    "seal_last_modified"|"profile_last_modified"|"dei_last_modified"|"financials_last_modified"|"last_modified" date_type?;
};

public type V3EssentialsResponse_properties record {
    # If the organization is present on the BMF
    boolean? bmf_status?;
    # If the organization is Pub78 verified
    boolean? pub78_verified?;
    # If the organization allows online giving
    boolean? allow_online_giving?;
    # If the organization has submitted demographics information
    boolean? dei_submitted?;
    # If the organization is revoked
    boolean? revoked?;
    # If the organization is defuncted or merged
    boolean? defuncted_or_merged?;
    V3EssentialsResponse_properties_relationship_type? relationship_type?;
    # Organization's relation with other organizations.
    V3EssentialsResponse_properties_relationship_details? relationship_details?;
};

public type EssentialsFilteredLookupResponse record {
    # HTTP response status code.
    int? code?;
    string? message?;
    int? took?;
    string[]? errors?;
    # A list of all the tables used as a filter_name with the Essentials Lookup endpoints
    EssentialsFilteredLookupResponse_data[]? data?;
};

public type V2EssentialsResponse_data_hits record {
    # A unique number identifying organizations and organizational entities
    string? organization_id?;
    # Deprecated Bridge ID
    string? bridge_id?;
    # Employer Identification Number
    string? ein?;
    # The public name recognized by the IRS
    string? organization_name?;
    # Organization name Also Known As
    string? also_known_as?;
    # Mission statement for the organization
    string? mission?;
    # Address line 1 of the organization
    string? address_line_1?;
    # Address line 2 of the organization
    string? address_line_2?;
    # City of the organization's address
    string? city?;
    # State (Abbreviation) of the organization's address
    string? state?;
    # Zip code of the organization's address
    string? zip?;
    # County of the organization's address
    string? county?;
    # Metropolitan statistical area of the organization's adresss
    string? msa?;
    # latitude and longitude of the organization's adress
    string? lat_long?;
    # National Taxonomy of Exempt Entities
    string? ntee_code?;
    # GuideStar seal levels.
    "BRONZE"|"SILVER"|"GOLD"|"PLATINUM"|"NONE" profile_level?;
    # GuideStar's public profile URL
    string? public_report?;
    # IRS subsection code of the organization
    string? subsection_code?;
    # Number of employees at the organization
    string? number_of_employees?;
    # Tax form filing type. 
    string? form_type?;
    # URL for the organization's website
    string? website_url?;
    # URL for the organization's logo
    string? logo_url?;
    # Foundation code that describes the organization
    string? foundation_code?;
    # Names of parent organizations, comma seperated
    string? parent_orgs?;
    # Gross receipts of the organization reported on the BMF
    string? bmf_gross_receipts?;
    # Assets of the organization reported on the BMF
    string? bmf_assets?;
    # Total revenue filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_revenue?;
    # Total expenses filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_expenses?;
    # Total assets filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_assets?;
    # Email of the primary contact at the organization
    string? contact_email?;
    # Name of the primary contact at the organization
    string? contact_name?;
    # Phone number of the primary contact at the organization
    string? contact_phone?;
    # Title of the primary contact at the organization
    string? contact_title?;
    V1EssentialsResponse_data_properties? properties?;
};

public type V3Query record {
    # Can be any string you'd like to search on, including EIN, organization name, keywords, etc.
    string? search_terms?;
    # The offset from the first result. Defaults to 0.
    int? 'from?;
    # The maximum number of hits to be returned. Defaults to 25. The maximum number allowed is 25.
    int? size?;
    V3Sort? sort?;
    V3Filters? filters?;
};

public type V3EssentialsResponse_taxonomies record {
    V3EssentialsResponse_taxonomies_subject_codes[]? subject_codes?;
    V3EssentialsResponse_taxonomies_population_served_codes[]? population_served_codes?;
    V3EssentialsResponse_taxonomies_ntee_codes[]? ntee_codes?;
    V3EssentialsResponse_taxonomies_subsection_code? subsection_code?;
    V3EssentialsResponse_taxonomies_foundation_code? foundation_code?;
};

public type AffiliationTypeFilter record {
    # Flag indicating the organization is a parent. Value set as true or false.
    boolean? parent?;
    # Flag indicating the organization is a subordinate. Value set as true or false.
    boolean? subordinate?;
    # Flag indicating the organization is independent. Value set as true or false.
    boolean? independent?;
    # Flag indicating the organization is a headquarter. Value set as true or false.
    boolean? headquarter?;
};

public type BadRequest record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type V3EssentialsResponse_hits record {
    V3EssentialsResponse_organization? organization?;
    V3EssentialsResponse_properties? properties?;
    V3EssentialsResponse_geography? geography?;
    V3EssentialsResponse_taxonomies? taxonomies?;
    V3EssentialsResponse_financials? financials?;
    V3EssentialsResponse_dates? dates?;
};

public type V3Filters record {
    GeographyFilter? geography?;
    V3OrganizationFilter? organization?;
    V3FinancialsFilter? financials?;
    LastUpdated? last_updated?;
};

public type NotAcceptable record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type V3EssentialsResponse_taxonomies_population_served_codes record {
    # Population served code
    string? population_served_code?;
    # Description of Population served code
    string? population_served_description?;
};

public type V3EssentialsResponse_financials_most_recent_year record {
    # Tax form filing type
    string? form_types?;
    # Fiscal year of the most recent tax filing
    decimal? fiscal_year?;
    # Most recent year total revenue
    decimal? total_revenue?;
    # Most recent year total expenses
    decimal? total_expenses?;
    # Most recent year total assets
    decimal? total_assets?;
};

public type V1EssentialsResponse_data_properties record {
    # If the organization is a parent
    boolean? parent?;
    # If the organization is a subordinate
    boolean? subordinate?;
    # If the organization is independent
    boolean? independent?;
    # If the organization is a national headquarter
    boolean? national_hq?;
    # If the organization is revoked
    boolean? revoked?;
    # If the organization is defuncted or merged
    boolean? defuncted_or_merged?;
    # If the organization performed a A-133 audit
    boolean? audit_a133_performed?;
    # If the organization is present on the BMF
    boolean? bmf_status?;
    # If the organization is Pub78 verified
    boolean? pub78_verified?;
    # If the organization allows online giving
    boolean? allow_online_giving?;
};

public type V3EssentialsResponse record {
    # Response Code
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # Time of API call.
    string? time?;
    # Number of results returned by search
    int? results_count?;
    # Number of pages returned by the search.
    int? page_count?;
    # List of errors encountered
    string[]? errors?;
    V3EssentialsResponse_hits[]? hits?;
};

public type V2EssentialsResponse_data record {
    # Elapsed time to calculate results
    int? took?;
    # Number of results returned by search
    int? total_hits?;
    V2EssentialsResponse_data_hits[]? hits?;
};

public type FinancialsFilter record {
    NumberRangeFilter? total_revenue?;
    NumberRangeFilter? total_expenses?;
    NumberRangeFilter? total_assets?;
};

public type EssentialsLookupResponse record {
    # Response Code
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    string[]? data?;
};

public type V3EssentialsResponse_taxonomies_subsection_code record {
    # IRS subsection code of the organization
    string? subsection_code?;
    # Description of IRS subsection code
    string? subsection_code_description?;
};

# Key value pair for filter name, value, and search_value
public type EssentialsFilteredLookupResponse_data record {
    # Code for the filter_name results
    string? 'key?;
    # Text for the filter_name results
    string? value?;
    # Value to pass in Essential's API filters
    string? search_value?;
};

public type Forbidden record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type V3FinancialsFilter_most_recent_year_form_types record {
    # Flag indicating the organization files a form 990. Value set as true or false.
    boolean? f990?;
    # Flag indicating the organization files a form 990-PF. Value set as true or false.
    boolean? f990pf?;
    # Flag indicating the organization files a form 990ez. Value set as true or false.
    boolean? f990ez?;
    # Flag indicating the organization files a form 990n. Value set as true or false.
    boolean? f990n?;
};

public type InternalServerError record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type V3EssentialsResponse_taxonomies_subject_codes record {
    # Subject code
    string? subject_code?;
    # Description of subject code
    string? subject_code_description?;
};

public type Unauthorized record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type V2EssentialsResponse record {
    # Response Code
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    V2EssentialsResponse_data? data?;
};

public type V3EssentialsResponse_organization record {
    # A unique number identifying organizations and organizational entities
    string? organization_id?;
    # Employer Identification Number
    string? ein?;
    # The public name recognized by the IRS
    string? organization_name?;
    # Organization name Also Known As
    string? also_known_as?;
    # Four-digit number assigned to a group of organizations falling under a central/parent organization holding group exemption letters.
    string? group_exemption?;
    # Mission statement for the organization
    string? mission?;
    # URL for the organization's website
    string? website_url?;
    # URL for the organization's logo
    string? logo_url?;
    # GuideStar seal level
    string? profile_level?;
    # GuideStar seal year
    decimal? profile_year?;
    # GuideStar's public profile URL
    string? profile_link?;
    # GuideStar's seal logo
    string? profile_logo?;
    # Name of leader
    string? leader_name?;
    # Leader's title
    string? leader_title?;
    # Name of the primary contact at the organization
    string? contact_name?;
    # Email of the primary contact at the organization
    string? contact_email?;
    # Phone number of the primary contact at the organization
    string? contact_phone?;
    # Title of the primary contact at the organization
    string? contact_title?;
    # Number of employees at the organization
    decimal|string? number_of_employees?;
    # The year the IRS granted organization tax exempt status (a.k.a. Ruling Year)
    decimal? ruling_year?;
};

public type SpecificExclusionsFilter record {
    # Flag to exclude revoked organizations. Value set as true or false.
    boolean? exclude_revoked_organizations?;
    # Flag to exclude defunct or merged organizations. Value set as true or false.
    boolean? exclude_defunct_or_merged_organizations?;
};

public type V1EssentialsResponse_data_hits record {
    # A unique number identifying organizations and organizational entities
    string? organization_id?;
    # Deprecated Bridge ID
    string? bridge_id?;
    # Employer Identification Number
    string? ein?;
    # The public name recognized by the IRS
    string? organization_name?;
    # Organization name Also Known As
    string? also_known_as?;
    # Mission statement for the organization
    string? mission?;
    # Address line 1 of the organization
    string? address_line_1?;
    # Address line 2 of the organization
    string? address_line_2?;
    # City of the organization's address
    string? city?;
    # State (Abbreviation) of the organization's address
    string? state?;
    # Zip code of the organization's address
    string? zip?;
    # County of the organization's address
    string? county?;
    # Metropolitan statistical area of the organization's adresss
    string? msa?;
    # latitude and longitude of the organization's adress
    string? lat_long?;
    # National Taxonomy of Exempt Entities
    string? ntee_code?;
    # GuideStar seal levels.
    "BRONZE"|"SILVER"|"GOLD"|"PLATINUM"|"NONE" profile_level?;
    # GuideStar's public profile URL
    string? public_report?;
    # IRS subsection code of the organization
    string? subsection_code?;
    # Number of employees at the organization
    string? number_of_employees?;
    # Tax form filing type. 
    string? form_type?;
    # URL for the organization's website
    string? website_url?;
    # Foundation code that describes the organization
    string? foundation_code?;
    # Names of parent organizations, comma seperated
    string? parent_orgs?;
    # Gross receipts of the organization reported on the BMF
    string? bmf_gross_receipts?;
    # Assets of the organization reported on the BMF
    string? bmf_assets?;
    # Total revenue filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_revenue?;
    # Total expenses filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_expenses?;
    # Total assets filed on the most recent Form 990, 990-PF, or 990-EZ filing
    string? form990_total_assets?;
    # Email of the primary contact at the organization
    string? contact_email?;
    # Name of the primary contact at the organization
    string? contact_name?;
    # Phone number of the primary contact at the organization
    string? contact_phone?;
    # Title of the primary contact at the organization
    string? contact_title?;
    V1EssentialsResponse_data_properties? properties?;
};

public type V3EssentialsResponse_dates record {
    # Date when Candid seal status was last modified.
    string? seal_last_modified?;
    # Datetime of last update to Candid profile.
    string? profile_last_modified?;
    # Datetime of last update to organization demographics information
    string? dei_last_modified?;
    # Datetime of last update to organization's financial information
    string? financials_last_modified?;
    # Datetime of organization's last publication
    string? last_published?;
};

public type V1EssentialsResponse_data record {
    # Elapsed time to calculate results
    int? took?;
    # Number of results returned by search
    int? total_hits?;
    V1EssentialsResponse_data_hits[]? hits?;
};

public type V3Sort record {
    # Leave blank to sort by relevance.
    "organization_name"|"bmf_gross_receipts"|"bmf_assets"|"distance"|"year_founded" sort_by?;
    # Default value is ascending. Allowed values are "asc" (ascending) and "desc" (descending).
    "asc"|"desc" sort_order?;
};

# Organization's relation with other organizations.
public type V3EssentialsResponse_properties_relationship_details record {
    # Relationship type of organization.
    "parent"|"subordinate" relationship_type?;
    # Name of organization.
    string? organization_name?;
    # Employer Identification Number
    string? ein?;
};

public type V1EssentialsResponse record {
    # Response Code
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    V1EssentialsResponse_data? data?;
};

public type V3OrganizationFilter record {
    # GuideStar seal levels, comma separated.
    string[]? profile_levels?;
    # Subject codes, comma separated.
    string[]? subject_codes?;
    # Population served codes, comma separated.
    string[]? population_served_codes?;
    # National Taxonomy of Exempt Entities (NTEE) major codes, comma separated.
    string[]? ntee_major_codes?;
    # National Taxonomy of Exempt Entities (NTEE) minor codes, comma separated.
    string[]? ntee_minor_codes?;
    # IRS subsection codes and/or descriptions, comma separated.
    string[]? subsection_codes?;
    # Foundation codes and/or descriptions, comma separated.
    string[]? foundation_codes?;
    # Group exemption codes, comma separated.
    string[]? group_exemption?;
    NumberRangeFilter? number_of_employees?;
    NumberRangeFilter? ruling_year?;
    V3OrgProperties? properties?;
};

public type AuditsFilter record {
    # Flag indicating the organization performed A-133 audit. Value set as true or false.
    boolean? a_133_audit_performed?;
};

public type TooManyRequests record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type NotFound record {
    # HTTP response status code.
    string? code?;
    string? message?;
};
