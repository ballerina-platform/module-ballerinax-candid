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

public type V1EssentialsResponseData record {
    V1EssentialsResponseDataHits[] hits?;
    # Elapsed time to calculate results
    int took?;
    # Number of results returned by search
    @jsondata:Name {value: "total_hits"}
    int totalHits?;
};

public type V3EssentialsResponse record {
    V3EssentialsResponseHits[] hits?;
    # Time taken for request to process
    int took?;
    # Response Code
    int code?;
    # Number of results returned by search
    @jsondata:Name {value: "results_count"}
    int resultsCount?;
    # Time of API call
    string time?;
    # Diagnostic message for response status
    string message?;
    # Number of pages returned by the search
    @jsondata:Name {value: "page_count"}
    int pageCount?;
    # List of errors encountered
    string[] errors?;
};

public type FinancialsFilter record {
    @jsondata:Name {value: "total_assets"}
    NumberRangeFilter totalAssets?;
    @jsondata:Name {value: "total_revenue"}
    NumberRangeFilter totalRevenue?;
    @jsondata:Name {value: "total_expenses"}
    NumberRangeFilter totalExpenses?;
};

public type EssentialsLookupResponse record {
    # Time taken for request to process
    int took?;
    # Response Code
    int code?;
    string[] data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

public type Query record {
    # Can be any string you'd like to search on, including EIN, organization name, keywords, etc
    @jsondata:Name {value: "search_terms"}
    string searchTerms?;
    # The maximum number of hits to be returned. Defaults to 25. The maximum number allowed is 25
    int size?;
    # The offset from the first result. Defaults to 0
    int 'from?;
    Sort sort?;
    Filters filters?;
};

public type OrganizationFilter record {
    # Flag indicating the organization has the most recent IRS BMF. Defaults to null. Otherwise true or false
    @jsondata:Name {value: "bmf_status"}
    boolean bmfStatus?;
    @jsondata:Name {value: "affiliation_type"}
    AffiliationTypeFilter affiliationType?;
    @jsondata:Name {value: "specific_exclusions"}
    SpecificExclusionsFilter specificExclusions?;
    @jsondata:Name {value: "number_of_employees_range"}
    NumberRangeFilter numberOfEmployeesRange?;
    # GuideStar seal levels, comma separated
    @jsondata:Name {value: "profile_levels"}
    string[] profileLevels?;
    # National Taxonomy of Exempt Entities (NTEE) minor codes, comma separated
    @jsondata:Name {value: "ntee_minor_codes"}
    string[] nteeMinorCodes?;
    # IRS subsection codes and/or descriptions, comma separated
    @jsondata:Name {value: "subsection_codes"}
    string[] subsectionCodes?;
    # National Taxonomy of Exempt Entities (NTEE) major codes, comma separated
    @jsondata:Name {value: "ntee_major_codes"}
    string[] nteeMajorCodes?;
    # Foundation codes and/or descriptions, comma separated
    @jsondata:Name {value: "foundation_codes"}
    string[] foundationCodes?;
    # Flag indicating the organization is pub78 verified. Value set as true or false
    @jsondata:Name {value: "pub78_verified"}
    boolean pub78Verified?;
    @jsondata:Name {value: "form_types"}
    IrsFormTypesFilter formTypes?;
    AuditsFilter audits?;
};

public type V3FinancialsFilter record {
    # Flag indicating the organization performed A-133 audit. Value set as true or false
    @jsondata:Name {value: "a_133_audit_performed"}
    boolean a133AuditPerformed?;
    # Flag indicating the organization is required to file a 990-T. Value set as true or false
    @jsondata:Name {value: "required_to_file_990t"}
    boolean requiredToFile990t?;
    @jsondata:Name {value: "most_recent_year"}
    V3FinancialsFilterMostRecentYear mostRecentYear?;
};

public type V3OrgProperties record {
    # Flag indicating the organization has the most recent IRS BMF. Defaults to null. Otherwise true or false
    @jsondata:Name {value: "bmf_status"}
    boolean bmfStatus?;
    # Flag to exclude defunct or merged organizations. Value set as true or false
    @jsondata:Name {value: "exclude_defunct_or_merged_organizations"}
    boolean excludeDefunctOrMergedOrganizations?;
    @jsondata:Name {value: "relationship_type"}
    AffiliationTypeFilter relationshipType?;
    # Flag to exclude revoked organizations. Value set as true or false
    @jsondata:Name {value: "exclude_revoked_organizations"}
    boolean excludeRevokedOrganizations?;
    # Flag indicating the organization is pub78 verified. Value set as true or false
    @jsondata:Name {value: "pub78_verified"}
    boolean pub78Verified?;
    # Flag indicating the organization allows online giving. Value set as true or false
    @jsondata:Name {value: "allow_online_giving"}
    boolean allowOnlineGiving?;
    # Flag indicating the organization has submitted demographics information. Value set as true or false
    @jsondata:Name {value: "dei_submitted"}
    boolean deiSubmitted?;
};

public type V3EssentialsResponseDates record {
    # Date when Candid seal status was last modified
    @jsondata:Name {value: "seal_last_modified"}
    string sealLastModified?;
    # Datetime of last update to organization's financial information
    @jsondata:Name {value: "financials_last_modified"}
    string financialsLastModified?;
    # Datetime of last update to organization demographics information
    @jsondata:Name {value: "dei_last_modified"}
    string deiLastModified?;
    # Datetime of last update to Candid profile
    @jsondata:Name {value: "profile_last_modified"}
    string profileLastModified?;
    # Datetime of organization's last publication
    @jsondata:Name {value: "last_published"}
    string lastPublished?;
};

public type NumberRangeFilter record {
    # Minimum number
    int min?;
    # Maximum number
    int max?;
};

public type V2EssentialsResponseDataHits record {
    # Names of parent organizations, comma seperated
    @jsondata:Name {value: "parent_orgs"}
    string parentOrgs?;
    # Phone number of the primary contact at the organization
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # City of the organization's address
    string city?;
    # URL for the organization's logo
    @jsondata:Name {value: "logo_url"}
    string logoUrl?;
    # latitude and longitude of the organization's adress
    @jsondata:Name {value: "lat_long"}
    string latLong?;
    # County of the organization's address
    string county?;
    # Employer Identification Number
    string ein?;
    # Tax form filing type. 
    @jsondata:Name {value: "form_type"}
    string formType?;
    # Total expenses filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_expenses"}
    string form990TotalExpenses?;
    # Email of the primary contact at the organization
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    # GuideStar seal levels
    @jsondata:Name {value: "profile_level"}
    "BRONZE"|"SILVER"|"GOLD"|"PLATINUM"|"NONE" profileLevel?;
    # IRS subsection code of the organization
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Address line 1 of the organization
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Address line 2 of the organization
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # State (Abbreviation) of the organization's address
    string state?;
    # Total revenue filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_revenue"}
    string form990TotalRevenue?;
    # Organization name Also Known As
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Zip code of the organization's address
    string zip?;
    # Name of the primary contact at the organization
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    # GuideStar's public profile URL
    @jsondata:Name {value: "public_report"}
    string publicReport?;
    # Gross receipts of the organization reported on the BMF
    @jsondata:Name {value: "bmf_gross_receipts"}
    string bmfGrossReceipts?;
    # The public name recognized by the IRS
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # National Taxonomy of Exempt Entities
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
    # Mission statement for the organization
    string mission?;
    # Number of employees at the organization
    @jsondata:Name {value: "number_of_employees"}
    string numberOfEmployees?;
    # URL for the organization's website
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    # A unique number identifying organizations and organizational entities
    @jsondata:Name {value: "organization_id"}
    string organizationId?;
    # Deprecated Bridge ID
    @jsondata:Name {value: "bridge_id"}
    string bridgeId?;
    # Metropolitan statistical area of the organization's adresss
    string msa?;
    # Total assets filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_assets"}
    string form990TotalAssets?;
    # Title of the primary contact at the organization
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # Foundation code that describes the organization
    @jsondata:Name {value: "foundation_code"}
    string foundationCode?;
    V1EssentialsResponseDataProperties properties?;
    # Assets of the organization reported on the BMF
    @jsondata:Name {value: "bmf_assets"}
    string bmfAssets?;
};

public type V3EssentialsResponseHits record {
    V3EssentialsResponseFinancials financials?;
    V3EssentialsResponseTaxonomies taxonomies?;
    V3EssentialsResponseGeography geography?;
    V3EssentialsResponseOrganization organization?;
    V3EssentialsResponseDates dates?;
    V3EssentialsResponseProperties properties?;
};

public type V3EssentialsResponseFinancials record {
    # Flag indicating the organization performed A-133 audit
    @jsondata:Name {value: "a_133_audit_performed"}
    boolean a133AuditPerformed?;
    # Flag indicating the organization is required to file a 990-T
    @jsondata:Name {value: "required_to_file_990t"}
    boolean requiredToFile990t?;
    # Gross receipts of the organization reported on the BMF
    @jsondata:Name {value: "bmf_gross_receipts"}
    decimal bmfGrossReceipts?;
    @jsondata:Name {value: "most_recent_year"}
    V3EssentialsResponseFinancialsMostRecentYear mostRecentYear?;
    # Assets of the organization reported on the BMF
    @jsondata:Name {value: "bmf_assets"}
    decimal bmfAssets?;
};

public type GeographyFilter record {
    # Five digit ZIP code
    string zip?;
    string[] city?;
    string[] county?;
    string[] msa?;
    string[] state?;
    # Radius from the specified ZIP code in miles. Allowed range is between 1 and 50 miles. Values exceeding 50 will default to a radius of 50 miles
    int radius?;
};

public type IrsFormTypesFilter record {
    # Flag indicating the organization files a form 990 EZ. Value set as true or false
    boolean f990ez?;
    # Flag indicating the organization files a form 990. Value set as true or false
    boolean f990?;
    # Flag indicating the organization is required to file a 990-T. Value set as true or false
    @jsondata:Name {value: "required_to_file_990t"}
    boolean requiredToFile990t?;
    # Flag indicating the organization files a form 990-PF. Value set as true or false
    boolean f990pf?;
    # Flag indicating the organization files a form 990N. Value set as true or false
    boolean f990n?;
};

# Organization's relation with other organizations
public type V3EssentialsResponsePropertiesRelationshipDetails record {
    # Relationship type of organization
    @jsondata:Name {value: "relationship_type"}
    "parent"|"subordinate" relationshipType?;
    # Name of organization
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # Employer Identification Number
    string ein?;
};

public type Filters record {
    FinancialsFilter financials?;
    GeographyFilter geography?;
    OrganizationFilter organization?;
};

public type V3EssentialsResponseProperties record {
    # If the organization is present on the BMF
    @jsondata:Name {value: "bmf_status"}
    boolean bmfStatus?;
    # If the organization is defuncted or merged
    @jsondata:Name {value: "defuncted_or_merged"}
    boolean defunctedOrMerged?;
    @jsondata:Name {value: "relationship_type"}
    V3EssentialsResponsePropertiesRelationshipType relationshipType?;
    @jsondata:Name {value: "relationship_details"}
    V3EssentialsResponsePropertiesRelationshipDetails relationshipDetails?;
    # If the organization is Pub78 verified
    @jsondata:Name {value: "pub78_verified"}
    boolean pub78Verified?;
    # If the organization allows online giving
    @jsondata:Name {value: "allow_online_giving"}
    boolean allowOnlineGiving?;
    # If the organization is revoked
    boolean revoked?;
    # If the organization has submitted demographics information
    @jsondata:Name {value: "dei_submitted"}
    boolean deiSubmitted?;
};

public type V3EssentialsResponseGeography record {
    # Zip code of the organization's address
    decimal|string zip?;
    # Congressional district of the organization's address
    @jsondata:Name {value: "congressional_district"}
    string congressionalDistrict?;
    # City of the organization's address
    string city?;
    # latitude of the organization's adress
    decimal latitude?;
    # Address line 1 of the organization
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # County of the organization's address
    string county?;
    # Metropolitan statistical area of the organization's adresss
    string msa?;
    # Address line 2 of the organization
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # State (Abbreviation) of the organization's address
    string state?;
    # longitude of the organization's adress
    decimal longitude?;
};

public type Sort record {
    # Leave blank to sort by relevance
    @jsondata:Name {value: "sort_by"}
    "organization_name"|"bmf_gross_receipts"|"bmf_assets" sortBy?;
    # Default value is true (ascending). Set to false to sort by descending value
    boolean 'ascending?;
};

public type V3FinancialsFilterMostRecentYearFormTypes record {
    # Flag indicating the organization files a form 990ez. Value set as true or false
    boolean f990ez?;
    # Flag indicating the organization files a form 990. Value set as true or false
    boolean f990?;
    # Flag indicating the organization files a form 990-PF. Value set as true or false
    boolean f990pf?;
    # Flag indicating the organization files a form 990n. Value set as true or false
    boolean f990n?;
};

public type V2EssentialsResponse record {
    # Time taken for request to process
    int took?;
    # Response Code
    int code?;
    V2EssentialsResponseData data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

public type V3EssentialsResponseOrganization record {
    # Organization name Also Known As
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Name of the primary contact at the organization
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    # Phone number of the primary contact at the organization
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # URL for the organization's logo
    @jsondata:Name {value: "logo_url"}
    string logoUrl?;
    # Name of leader
    @jsondata:Name {value: "leader_name"}
    string leaderName?;
    # The year the IRS granted organization tax exempt status (a.k.a. Ruling Year)
    @jsondata:Name {value: "ruling_year"}
    decimal rulingYear?;
    # GuideStar seal year
    @jsondata:Name {value: "profile_year"}
    decimal profileYear?;
    # Employer Identification Number
    string ein?;
    # The public name recognized by the IRS
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # Leader's title
    @jsondata:Name {value: "leader_title"}
    string leaderTitle?;
    # GuideStar's seal logo
    @jsondata:Name {value: "profile_logo"}
    string profileLogo?;
    # Email of the primary contact at the organization
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    # GuideStar seal level
    @jsondata:Name {value: "profile_level"}
    string profileLevel?;
    # Mission statement for the organization
    string mission?;
    # Number of employees at the organization
    @jsondata:Name {value: "number_of_employees"}
    decimal|string numberOfEmployees?;
    # URL for the organization's website
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    # A unique number identifying organizations and organizational entities
    @jsondata:Name {value: "organization_id"}
    string organizationId?;
    # Four-digit number assigned to a group of organizations falling under a central/parent organization holding group exemption letters
    @jsondata:Name {value: "group_exemption"}
    string groupExemption?;
    # Title of the primary contact at the organization
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # GuideStar's public profile URL
    @jsondata:Name {value: "profile_link"}
    string profileLink?;
};

public type LastUpdated record {
    # A filter, along with start_date, defines a range on date_type, in the format yyyy-MM-ddTHH:mm:ss
    @jsondata:Name {value: "end_date"}
    string endDate?;
    # A filter, to specify updates made to a organization over the specified end_date and start_date
    @jsondata:Name {value: "date_type"}
    "seal_last_modified"|"profile_last_modified"|"dei_last_modified"|"financials_last_modified"|"last_modified" dateType?;
    # A filter, along with end_date, defines a range on date_type, in the format yyyy-MM-ddTHH:mm:ss
    @jsondata:Name {value: "start_date"}
    string startDate?;
};

public type V3FinancialsFilterMostRecentYear record {
    @jsondata:Name {value: "total_assets"}
    NumberRangeFilter totalAssets?;
    @jsondata:Name {value: "total_revenue"}
    NumberRangeFilter totalRevenue?;
    @jsondata:Name {value: "form_types"}
    V3FinancialsFilterMostRecentYearFormTypes formTypes?;
    @jsondata:Name {value: "total_expenses"}
    NumberRangeFilter totalExpenses?;
};

public type EssentialsFilteredLookupResponse record {
    int took?;
    # HTTP response status code
    int code?;
    # A list of all the tables used as a filter_name with the Essentials Lookup endpoints
    EssentialsFilteredLookupResponseData[] data?;
    string message?;
    string[] errors?;
};

public type SpecificExclusionsFilter record {
    # Flag to exclude defunct or merged organizations. Value set as true or false
    @jsondata:Name {value: "exclude_defunct_or_merged_organizations"}
    boolean excludeDefunctOrMergedOrganizations?;
    # Flag to exclude revoked organizations. Value set as true or false
    @jsondata:Name {value: "exclude_revoked_organizations"}
    boolean excludeRevokedOrganizations?;
};

public type V3EssentialsResponseFinancialsMostRecentYear record {
    # Most recent year total assets
    @jsondata:Name {value: "total_assets"}
    decimal totalAssets?;
    # Fiscal year of the most recent tax filing
    @jsondata:Name {value: "fiscal_year"}
    decimal fiscalYear?;
    # Most recent year total revenue
    @jsondata:Name {value: "total_revenue"}
    decimal totalRevenue?;
    # Tax form filing type
    @jsondata:Name {value: "form_types"}
    string formTypes?;
    # Most recent year total expenses
    @jsondata:Name {value: "total_expenses"}
    decimal totalExpenses?;
};

public type V3EssentialsResponseTaxonomies record {
    @jsondata:Name {value: "subsection_code"}
    V3EssentialsResponseTaxonomiesSubsectionCode subsectionCode?;
    @jsondata:Name {value: "population_served_codes"}
    V3EssentialsResponseTaxonomiesPopulationServedCodes[] populationServedCodes?;
    @jsondata:Name {value: "ntee_codes"}
    V3EssentialsResponseTaxonomiesNteeCodes[] nteeCodes?;
    @jsondata:Name {value: "foundation_code"}
    V3EssentialsResponseTaxonomiesFoundationCode foundationCode?;
    @jsondata:Name {value: "subject_codes"}
    V3EssentialsResponseTaxonomiesSubjectCodes[] subjectCodes?;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    http:ClientHttp1Settings http1Settings = {};
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings = {};
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 30;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with Redirection
    http:FollowRedirects followRedirects?;
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache = {};
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with cookies
    http:CookieConfig cookieConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits = {};
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Provides settings related to client socket configuration
    http:ClientSocketConfig socketConfig = {};
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
    # Enables relaxed data binding on the client side. When enabled, `nil` values are treated as optional, 
    # and absent fields are handled as `nilable` types. Enabled by default.
    boolean laxDataBinding = true;
|};

public type V3Query record {
    # Can be any string you'd like to search on, including EIN, organization name, keywords, etc
    @jsondata:Name {value: "search_terms"}
    string searchTerms?;
    # The maximum number of hits to be returned. Defaults to 25. The maximum number allowed is 25
    int size?;
    # The offset from the first result. Defaults to 0
    int 'from?;
    V3Sort sort?;
    V3Filters filters?;
};

public type V3EssentialsResponseTaxonomiesSubjectCodes record {
    # Subject code
    @jsondata:Name {value: "subject_code"}
    string subjectCode?;
    # Description of subject code
    @jsondata:Name {value: "subject_code_description"}
    string subjectCodeDescription?;
};

public type V3EssentialsResponseTaxonomiesPopulationServedCodes record {
    # Description of Population served code
    @jsondata:Name {value: "population_served_description"}
    string populationServedDescription?;
    # Population served code
    @jsondata:Name {value: "population_served_code"}
    string populationServedCode?;
};

public type V3EssentialsResponseTaxonomiesSubsectionCode record {
    # IRS subsection code of the organization
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Description of IRS subsection code
    @jsondata:Name {value: "subsection_code_description"}
    string subsectionCodeDescription?;
};

public type V3EssentialsResponsePropertiesRelationshipType record {
    # If the organization is a parent
    boolean parent?;
    # If the organization is a national headquarter
    boolean headquarters?;
    # If the organization is a subordinate
    boolean subordinate?;
    # If the organization is independent
    boolean independent?;
};

public type V3Sort record {
    # Leave blank to sort by relevance
    @jsondata:Name {value: "sort_by"}
    "organization_name"|"bmf_gross_receipts"|"bmf_assets"|"distance"|"year_founded" sortBy?;
    # Default value is ascending. Allowed values are "asc" (ascending) and "desc" (descending)
    @jsondata:Name {value: "sort_order"}
    "asc"|"desc" sortOrder?;
};

public type AffiliationTypeFilter record {
    # Flag indicating the organization is a parent. Value set as true or false
    boolean parent?;
    # Flag indicating the organization is a subordinate. Value set as true or false
    boolean subordinate?;
    # Flag indicating the organization is independent. Value set as true or false
    boolean independent?;
    # Flag indicating the organization is a headquarter. Value set as true or false
    boolean headquarter?;
};

public type V3EssentialsResponseTaxonomiesFoundationCode record {
    # Description of foundation code
    @jsondata:Name {value: "foundation_code_description"}
    string foundationCodeDescription?;
    # Foundation code that describes the organization
    @jsondata:Name {value: "foundation_code"}
    string foundationCode?;
};

public type V1EssentialsResponse record {
    # Time taken for request to process
    int took?;
    # Response Code
    int code?;
    V1EssentialsResponseData data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

public type V2EssentialsResponseData record {
    V2EssentialsResponseDataHits[] hits?;
    # Elapsed time to calculate results
    int took?;
    # Number of results returned by search
    @jsondata:Name {value: "total_hits"}
    int totalHits?;
};

public type AuditsFilter record {
    # Flag indicating the organization performed A-133 audit. Value set as true or false
    @jsondata:Name {value: "a_133_audit_performed"}
    boolean a133AuditPerformed?;
};

public type V3OrganizationFilter record {
    @jsondata:Name {value: "number_of_employees"}
    NumberRangeFilter numberOfEmployees?;
    @jsondata:Name {value: "ruling_year"}
    NumberRangeFilter rulingYear?;
    # Group exemption codes, comma separated
    @jsondata:Name {value: "group_exemption"}
    string[] groupExemption?;
    # GuideStar seal levels, comma separated
    @jsondata:Name {value: "profile_levels"}
    string[] profileLevels?;
    # National Taxonomy of Exempt Entities (NTEE) minor codes, comma separated
    @jsondata:Name {value: "ntee_minor_codes"}
    string[] nteeMinorCodes?;
    # IRS subsection codes and/or descriptions, comma separated
    @jsondata:Name {value: "subsection_codes"}
    string[] subsectionCodes?;
    # National Taxonomy of Exempt Entities (NTEE) major codes, comma separated
    @jsondata:Name {value: "ntee_major_codes"}
    string[] nteeMajorCodes?;
    # Foundation codes and/or descriptions, comma separated
    @jsondata:Name {value: "foundation_codes"}
    string[] foundationCodes?;
    # Population served codes, comma separated
    @jsondata:Name {value: "population_served_codes"}
    string[] populationServedCodes?;
    V3OrgProperties properties?;
    # Subject codes, comma separated
    @jsondata:Name {value: "subject_codes"}
    string[] subjectCodes?;
};

public type V3EssentialsResponseTaxonomiesNteeCodes record {
    # Description of NTEE code
    @jsondata:Name {value: "ntee_code_description"}
    string nteeCodeDescription?;
    # National Taxonomy of Exempt Entities
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
};

public type V1EssentialsResponseDataProperties record {
    # If the organization is present on the BMF
    @jsondata:Name {value: "bmf_status"}
    boolean bmfStatus?;
    # If the organization is a parent
    boolean parent?;
    # If the organization is defuncted or merged
    @jsondata:Name {value: "defuncted_or_merged"}
    boolean defunctedOrMerged?;
    # If the organization is a subordinate
    boolean subordinate?;
    # If the organization is independent
    boolean independent?;
    # If the organization is Pub78 verified
    @jsondata:Name {value: "pub78_verified"}
    boolean pub78Verified?;
    # If the organization performed a A-133 audit
    @jsondata:Name {value: "audit_a133_performed"}
    boolean auditA133Performed?;
    # If the organization allows online giving
    @jsondata:Name {value: "allow_online_giving"}
    boolean allowOnlineGiving?;
    # If the organization is revoked
    boolean revoked?;
    # If the organization is a national headquarter
    @jsondata:Name {value: "national_hq"}
    boolean nationalHq?;
};

public type V3Filters record {
    V3FinancialsFilter financials?;
    @jsondata:Name {value: "last_updated"}
    LastUpdated lastUpdated?;
    GeographyFilter geography?;
    V3OrganizationFilter organization?;
};

public type V1EssentialsResponseDataHits record {
    # Names of parent organizations, comma seperated
    @jsondata:Name {value: "parent_orgs"}
    string parentOrgs?;
    # Phone number of the primary contact at the organization
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # City of the organization's address
    string city?;
    # latitude and longitude of the organization's adress
    @jsondata:Name {value: "lat_long"}
    string latLong?;
    # County of the organization's address
    string county?;
    # Employer Identification Number
    string ein?;
    # Tax form filing type. 
    @jsondata:Name {value: "form_type"}
    string formType?;
    # Total expenses filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_expenses"}
    string form990TotalExpenses?;
    # Email of the primary contact at the organization
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    # GuideStar seal levels
    @jsondata:Name {value: "profile_level"}
    "BRONZE"|"SILVER"|"GOLD"|"PLATINUM"|"NONE" profileLevel?;
    # IRS subsection code of the organization
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Address line 1 of the organization
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Address line 2 of the organization
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # State (Abbreviation) of the organization's address
    string state?;
    # Total revenue filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_revenue"}
    string form990TotalRevenue?;
    # Organization name Also Known As
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Zip code of the organization's address
    string zip?;
    # Name of the primary contact at the organization
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    # GuideStar's public profile URL
    @jsondata:Name {value: "public_report"}
    string publicReport?;
    # Gross receipts of the organization reported on the BMF
    @jsondata:Name {value: "bmf_gross_receipts"}
    string bmfGrossReceipts?;
    # The public name recognized by the IRS
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # National Taxonomy of Exempt Entities
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
    # Mission statement for the organization
    string mission?;
    # Number of employees at the organization
    @jsondata:Name {value: "number_of_employees"}
    string numberOfEmployees?;
    # URL for the organization's website
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    # A unique number identifying organizations and organizational entities
    @jsondata:Name {value: "organization_id"}
    string organizationId?;
    # Deprecated Bridge ID
    @jsondata:Name {value: "bridge_id"}
    string bridgeId?;
    # Metropolitan statistical area of the organization's adresss
    string msa?;
    # Total assets filed on the most recent Form 990, 990-PF, or 990-EZ filing
    @jsondata:Name {value: "form990_total_assets"}
    string form990TotalAssets?;
    # Title of the primary contact at the organization
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # Foundation code that describes the organization
    @jsondata:Name {value: "foundation_code"}
    string foundationCode?;
    V1EssentialsResponseDataProperties properties?;
    # Assets of the organization reported on the BMF
    @jsondata:Name {value: "bmf_assets"}
    string bmfAssets?;
};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
public type ApiKeysConfig record {|
    string subscriptionKey;
|};

# Key value pair for filter name, value, and search_value
public type EssentialsFilteredLookupResponseData record {
    # Value to pass in Essential's API filters
    @jsondata:Name {value: "search_value"}
    string searchValue?;
    # Text for the filter_name results
    string value?;
    # Code for the filter_name results
    string 'key?;
};
