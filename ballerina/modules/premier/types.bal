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

# IRS letter of determination information
public type LetterOfDetermination record {
    # URL to the letter of determination
    @jsondata:Name {value: "letter_of_determination_url"}
    string letterOfDeterminationUrl?;
    # Document name of the letter of determination
    @jsondata:Name {value: "letter_of_determination_doc_name"}
    string letterOfDeterminationDocName?;
};

# Organization operations information
public type Operations1 record {
    # Number of employees that are paid at least $100k
    @jsondata:Name {value: "employees_greater_than_100K"}
    int:Signed32 employeesGreaterThan100K?;
    # Start year of board chair term
    @jsondata:Name {value: "board_chair_term_start"}
    string boardChairTermStart?;
    # Name of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_name"}
    string fundraisingContactName?;
    # Phone number of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_phone"}
    string fundraisingContactPhone?;
    # URL of organization blog
    @jsondata:Name {value: "blog_url"}
    string blogUrl?;
    # Tax preparation firm address
    @jsondata:Name {value: "preparer_firm_address"}
    string preparerFirmAddress?;
    @deprecated
    Accreditation[] accreditations?;
    # End year of board co-chair term
    @jsondata:Name {value: "board_co_chair_term_end"}
    string boardCoChairTermEnd?;
    # Organization leader profile
    @jsondata:Name {value: "leader_profile"}
    string leaderProfile?;
    # Number of volunteers at an organization
    @jsondata:Name {value: "no_of_volunteers"}
    int:Signed32 noOfVolunteers?;
    # Organization co-leader name
    @jsondata:Name {value: "co_leader_name"}
    string coLeaderName?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "organization_email"}
    @deprecated
    string organizationEmail?;
    # End year of board chair term
    @jsondata:Name {value: "board_chair_term_end"}
    string boardChairTermEnd?;
    # Tax preparation firm name
    @jsondata:Name {value: "preparer_firm_name"}
    string preparerFirmName?;
    # The year details in operations are from
    @jsondata:Name {value: "organization_details_year"}
    int:Signed32 organizationDetailsYear?;
    # Name of board co-chairperson
    @jsondata:Name {value: "board_co_chair_name"}
    string boardCoChairName?;
    # Tax preparation firm phone number
    @jsondata:Name {value: "preparer_firm_phone"}
    string preparerFirmPhone?;
    # Start year of board co-chair term
    @jsondata:Name {value: "board_co_chair_term_start"}
    string boardCoChairTermStart?;
    # Organization leader name
    @jsondata:Name {value: "leader_name"}
    string leaderName?;
    @jsondata:Name {value: "board_leadership_practices"}
    Question[] boardLeadershipPractices?;
    @jsondata:Name {value: "senior_staff"}
    @deprecated
    SeniorStaff[] seniorStaff?;
    # Number of employees of the organization
    @jsondata:Name {value: "no_of_employees"}
    int:Signed32 noOfEmployees?;
    @jsondata:Name {value: "highest_paid_employees"}
    Person[] highestPaidEmployees?;
    # Title of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_title"}
    string fundraisingContactTitle?;
    Contractor[] contractors?;
    # Tax preparation firm EIN
    @jsondata:Name {value: "preparer_firm_ein"}
    string preparerFirmEin?;
    # Organization co-leader profile
    @jsondata:Name {value: "co_leader_profile"}
    string coLeaderProfile?;
    @jsondata:Name {value: "other_staff"}
    @deprecated
    OtherStaff[] otherStaff?;
    # Name of the board chairperson
    @jsondata:Name {value: "board_chair_name"}
    string boardChairName?;
    # Company board chairperson is associated with
    @jsondata:Name {value: "board_chair_affiliation"}
    string boardChairAffiliation?;
    @jsondata:Name {value: "officers_directors_key_employees"}
    Person[] officersDirectorsKeyEmployees?;
    @jsondata:Name {value: "organization_demographics"}
    OrganizationDemographics organizationDemographics?;
    @jsondata:Name {value: "board_of_directors"}
    BoardMember[] boardOfDirectors?;
    # Company board co-chairperson is associated with
    @jsondata:Name {value: "board_co_chair_affiliation"}
    string boardCoChairAffiliation?;
    # Email address of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_email"}
    string fundraisingContactEmail?;
};

# Organization operations information
public type Operations2 record {
    # Number of employees that are paid at least $100k
    @jsondata:Name {value: "employees_greater_than_100K"}
    int:Signed32 employeesGreaterThan100K?;
    # Start year of board chair term
    @jsondata:Name {value: "board_chair_term_start"}
    string boardChairTermStart?;
    # Name of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_name"}
    string fundraisingContactName?;
    # Phone number of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_phone"}
    string fundraisingContactPhone?;
    # URL of organization blog
    @jsondata:Name {value: "blog_url"}
    string blogUrl?;
    # Tax preparation firm address
    @jsondata:Name {value: "preparer_firm_address"}
    string preparerFirmAddress?;
    @deprecated
    Accreditation[] accreditations?;
    # End year of board co-chair term
    @jsondata:Name {value: "board_co_chair_term_end"}
    string boardCoChairTermEnd?;
    # Organization leader profile
    @jsondata:Name {value: "leader_profile"}
    string leaderProfile?;
    # Number of volunteers at an organization
    @jsondata:Name {value: "no_of_volunteers"}
    int:Signed32 noOfVolunteers?;
    # Organization co-leader name
    @jsondata:Name {value: "co_leader_name"}
    string coLeaderName?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "organization_email"}
    @deprecated
    string organizationEmail?;
    # End year of board chair term
    @jsondata:Name {value: "board_chair_term_end"}
    string boardChairTermEnd?;
    # Tax preparation firm name
    @jsondata:Name {value: "preparer_firm_name"}
    string preparerFirmName?;
    # The year details in operations are from
    @jsondata:Name {value: "organization_details_year"}
    int:Signed32 organizationDetailsYear?;
    # Name of board co-chairperson
    @jsondata:Name {value: "board_co_chair_name"}
    string boardCoChairName?;
    # Tax preparation firm phone number
    @jsondata:Name {value: "preparer_firm_phone"}
    string preparerFirmPhone?;
    # Start year of board co-chair term
    @jsondata:Name {value: "board_co_chair_term_start"}
    string boardCoChairTermStart?;
    # Organization leader name
    @jsondata:Name {value: "leader_name"}
    string leaderName?;
    @jsondata:Name {value: "board_leadership_practices"}
    Question[] boardLeadershipPractices?;
    @jsondata:Name {value: "senior_staff"}
    @deprecated
    SeniorStaff[] seniorStaff?;
    # Number of employees of the organization
    @jsondata:Name {value: "no_of_employees"}
    int:Signed32 noOfEmployees?;
    @jsondata:Name {value: "highest_paid_employees"}
    Person[] highestPaidEmployees?;
    # Title of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_title"}
    string fundraisingContactTitle?;
    Contractor[] contractors?;
    # Tax preparation firm EIN
    @jsondata:Name {value: "preparer_firm_ein"}
    string preparerFirmEin?;
    # Organization co-leader profile
    @jsondata:Name {value: "co_leader_profile"}
    string coLeaderProfile?;
    @jsondata:Name {value: "other_staff"}
    @deprecated
    OtherStaff[] otherStaff?;
    # Name of the board chairperson
    @jsondata:Name {value: "board_chair_name"}
    string boardChairName?;
    # Company board chairperson is associated with
    @jsondata:Name {value: "board_chair_affiliation"}
    string boardChairAffiliation?;
    @jsondata:Name {value: "officers_directors_key_employees"}
    Person[] officersDirectorsKeyEmployees?;
    @jsondata:Name {value: "organization_demographics"}
    OrganizationDemographics organizationDemographics?;
    @jsondata:Name {value: "board_of_directors"}
    BoardMember[] boardOfDirectors?;
    # Company board co-chairperson is associated with
    @jsondata:Name {value: "board_co_chair_affiliation"}
    string boardCoChairAffiliation?;
    DEI2Demographics demographics?;
    # Email address of primary fundraising contact
    @jsondata:Name {value: "fundraising_contact_email"}
    string fundraisingContactEmail?;
};

# Information about the non-profit, such as name and address
public type Summary1 record {
    @jsondata:Name {value: "other_documents"}
    OtherDocument[] otherDocuments?;
    @jsondata:Name {value: "naics_code"}
    NAICSCode naicsCode?;
    # When the fiscal year ends for the organization
    @jsondata:Name {value: "fiscal_year_end"}
    string fiscalYearEnd?;
    # When the fiscal year begins for the organization
    @jsondata:Name {value: "fiscal_year_start"}
    string fiscalYearStart?;
    Address[] addresses?;
    # Primary contact phone number
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # Keywords added by the organization to their profile
    string keywords?;
    @jsondata:Name {value: "social_media_urls"}
    string[] socialMediaUrls?;
    # Organization logo URL
    @jsondata:Name {value: "logo_url"}
    string logoUrl?;
    # EIN that should be used for charitable donations
    @jsondata:Name {value: "donation_to_ein"}
    string donationToEin?;
    # Description of what the affiliation code means
    @jsondata:Name {value: "affiliation_description"}
    string affiliationDescription?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "areas_served_narrative"}
    @deprecated
    string areasServedNarrative?;
    # Primary contact fax number
    @jsondata:Name {value: "contact_fax"}
    string contactFax?;
    # Description of organization subsection code
    @jsondata:Name {value: "subsection_description"}
    string subsectionDescription?;
    Video[] videos?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "impact_statement"}
    @deprecated
    string impactStatement?;
    @jsondata:Name {value: "ntee_codes"}
    NteeCode[] nteeCodes?;
    PhotoLink[] photos?;
    @jsondata:Name {value: "telephone_numbers"}
    TelephoneNumber[] telephoneNumbers?;
    # Url to Guidestar.org seal image
    @jsondata:Name {value: "gs_profile_update_level_logo"}
    string gsProfileUpdateLevelLogo?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Organization address state
    string state?;
    # Organization fax number
    string fax?;
    # Organization address zip code
    string zip?;
    @jsondata:Name {value: "letters_of_determination"}
    LetterOfDetermination[] lettersOfDetermination?;
    @jsondata:Name {value: "formerly_known_as"}
    @deprecated
    FormerName[] formerlyKnownAs?;
    # Year that an organization was incorporated
    @jsondata:Name {value: "year_incorporated"}
    string yearIncorporated?;
    # Organization name
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
    # Organization mission statement
    string mission?;
    # Guidestar.org organization profile seal of transparency level
    @jsondata:Name {value: "gs_profile_update_level"}
    string gsProfileUpdateLevel?;
    # GuideStar internal organization ID
    @jsondata:Name {value: "organization_id"}
    int organizationId?;
    # Primary contact title
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # Deductibility code description
    @jsondata:Name {value: "deductibility_description"}
    string deductibilityDescription?;
    # Organization address city
    string city?;
    # Year that organization started operating as a non-profit
    @jsondata:Name {value: "ruling_year"}
    string rulingYear?;
    # Year that an organization was founded
    @jsondata:Name {value: "year_founded"}
    string yearFounded?;
    @deprecated
    Affiliation[] affiliations?;
    # Employee identification number
    string ein?;
    # Guidestar.org organization profile URL
    @jsondata:Name {value: "gs_public_report"}
    string gsPublicReport?;
    # Primary contact email
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    @jsondata:Name {value: "letters_of_dissolution"}
    LetterOfDissolution[] lettersOfDissolution?;
    @jsondata:Name {value: "sic_codes"}
    SICCode[] sicCodes?;
    # Organization address street name
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Organization address Suite or Apartment number
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # Legal organization name
    @jsondata:Name {value: "govt_registered_name"}
    string govtRegisteredName?;
    # Comma separated string of names associated with the organization
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Primary contact name
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    @jsondata:Name {value: "forms_1023_1024"}
    string[] forms10231024?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    @jsondata:Name {value: "gs_pro_pdf"}
    string gsProPdf?;
    # Whether or not this organization is the national headquarters
    @jsondata:Name {value: "is_national_hq"}
    boolean isNationalHq?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption
    @jsondata:Name {value: "affiliation_code"}
    string affiliationCode?;
    # Organization name that should be used for charitable donations
    @jsondata:Name {value: "donation_to_name"}
    string donationToName?;
    # Organization website URL
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    @deprecated
    Award[] awards?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "bridge_id"}
    @deprecated
    string bridgeId?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    @jsondata:Name {value: "deductibility_code"}
    string deductibilityCode?;
};

# Address entry in summary.addresses. Usually an office of an organization
public type Address record {
    # Address country
    string country?;
    # Address type
    @jsondata:Name {value: "address_type"}
    string addressType?;
    # Address city
    string city?;
    # Address line 1
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Address line 2
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # Address state
    string state?;
    # Address postal code
    @jsondata:Name {value: "postal_code"}
    string postalCode?;
};

public type FinancialStatement record {
    # When the fiscal year ends
    @jsondata:Name {value: "fiscal_year_end"}
    string fiscalYearEnd?;
    # The company that audited the financials
    @jsondata:Name {value: "auditing_company"}
    string auditingCompany?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "fiscal_year_begin"}
    @deprecated
    string fiscalYearBegin?;
    # The name of the uploaded document
    @jsondata:Name {value: "doc_name"}
    string docName?;
    # The url of the document
    @jsondata:Name {value: "document_url"}
    string documentUrl?;
};

# Information about the non-profit, such as name and address
public type Summary2 record {
    @jsondata:Name {value: "other_documents"}
    OtherDocument[] otherDocuments?;
    @jsondata:Name {value: "naics_code"}
    NAICSCode naicsCode?;
    # When the fiscal year ends for the organization
    @jsondata:Name {value: "fiscal_year_end"}
    string fiscalYearEnd?;
    # When the fiscal year begins for the organization
    @jsondata:Name {value: "fiscal_year_start"}
    string fiscalYearStart?;
    Address[] addresses?;
    # Primary contact phone number
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # Keywords added by the organization to their profile
    string keywords?;
    @jsondata:Name {value: "social_media_urls"}
    string[] socialMediaUrls?;
    # Organization logo URL
    @jsondata:Name {value: "logo_url"}
    string logoUrl?;
    # EIN that should be used for charitable donations
    @jsondata:Name {value: "donation_to_ein"}
    string donationToEin?;
    # Description of what the affiliation code means
    @jsondata:Name {value: "affiliation_description"}
    string affiliationDescription?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "areas_served_narrative"}
    @deprecated
    string areasServedNarrative?;
    # URL of API call to the FTA PDF API endpoint to download the organization's financial trends analysis PDF
    @jsondata:Name {value: "gs_financial_trends_analysis_pdf"}
    string gsFinancialTrendsAnalysisPdf?;
    # Primary contact fax number
    @jsondata:Name {value: "contact_fax"}
    string contactFax?;
    # Description of organization subsection code
    @jsondata:Name {value: "subsection_description"}
    string subsectionDescription?;
    Video[] videos?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "impact_statement"}
    @deprecated
    string impactStatement?;
    @jsondata:Name {value: "ntee_codes"}
    NteeCode[] nteeCodes?;
    PhotoLink[] photos?;
    @jsondata:Name {value: "telephone_numbers"}
    TelephoneNumber[] telephoneNumbers?;
    # Url to Guidestar.org seal image
    @jsondata:Name {value: "gs_profile_update_level_logo"}
    string gsProfileUpdateLevelLogo?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Organization address state
    string state?;
    # Organization fax number
    string fax?;
    # Organization address zip code
    string zip?;
    @jsondata:Name {value: "letters_of_determination"}
    LetterOfDetermination[] lettersOfDetermination?;
    @jsondata:Name {value: "formerly_known_as"}
    @deprecated
    FormerName[] formerlyKnownAs?;
    # Year that an organization was incorporated
    @jsondata:Name {value: "year_incorporated"}
    string yearIncorporated?;
    # Organization name
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
    # Organization mission statement
    string mission?;
    # Guidestar.org organization profile seal of transparency level
    @jsondata:Name {value: "gs_profile_update_level"}
    string gsProfileUpdateLevel?;
    # GuideStar internal organization ID
    @jsondata:Name {value: "organization_id"}
    int organizationId?;
    # First time organization appeared on the BMF
    @jsondata:Name {value: "first_on_bmf_date"}
    string firstOnBmfDate?;
    # Primary contact title
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # Deductibility code description
    @jsondata:Name {value: "deductibility_description"}
    string deductibilityDescription?;
    # Last time an organization appeared on the BMF
    @jsondata:Name {value: "last_on_bmf_date"}
    string lastOnBmfDate?;
    # Organization address city
    string city?;
    # Year that organization started operating as a non-profit
    @jsondata:Name {value: "ruling_year"}
    string rulingYear?;
    # Year that an organization was founded
    @jsondata:Name {value: "year_founded"}
    string yearFounded?;
    @deprecated
    Affiliation[] affiliations?;
    # Employee identification number
    string ein?;
    # Guidestar.org organization profile URL
    @jsondata:Name {value: "gs_public_report"}
    string gsPublicReport?;
    # Primary contact email
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    @jsondata:Name {value: "letters_of_dissolution"}
    LetterOfDissolution[] lettersOfDissolution?;
    @jsondata:Name {value: "sic_codes"}
    SICCode[] sicCodes?;
    @jsondata:Name {value: "profile_data_change_dates"}
    ProfileDataChangeDates profileDataChangeDates?;
    # Organization address street name
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Is the organization not on the BMF
    @jsondata:Name {value: "is_non_bmf_org"}
    boolean isNonBmfOrg?;
    # Organization address Suite or Apartment number
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # Legal organization name
    @jsondata:Name {value: "govt_registered_name"}
    string govtRegisteredName?;
    # Comma separated string of names associated with the organization
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Primary contact name
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    @jsondata:Name {value: "forms_1023_1024"}
    string[] forms10231024?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    @jsondata:Name {value: "gs_pro_pdf"}
    string gsProPdf?;
    # Whether or not this organization is the national headquarters
    @jsondata:Name {value: "is_national_hq"}
    boolean isNationalHq?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption
    @jsondata:Name {value: "affiliation_code"}
    string affiliationCode?;
    # Organization name that should be used for charitable donations
    @jsondata:Name {value: "donation_to_name"}
    string donationToName?;
    # Organization website URL
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    @deprecated
    Award[] awards?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "bridge_id"}
    @deprecated
    string bridgeId?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    @jsondata:Name {value: "deductibility_code"}
    string deductibilityCode?;
    @jsondata:Name {value: "platinum_evaluation_documents"}
    PlatinumEvaluationDocument[] platinumEvaluationDocuments?;
};

# Information about the non-profit, such as name and address
public type Summary3 record {
    @jsondata:Name {value: "other_documents"}
    OtherDocument[] otherDocuments?;
    @jsondata:Name {value: "naics_code"}
    NAICSCode naicsCode?;
    # Has this organization filled the 'How we listen' section of their profile
    @jsondata:Name {value: "org_collect_feedback"}
    boolean orgCollectFeedback?;
    # When the fiscal year ends for the organization
    @jsondata:Name {value: "fiscal_year_end"}
    string fiscalYearEnd?;
    # When the fiscal year begins for the organization
    @jsondata:Name {value: "fiscal_year_start"}
    string fiscalYearStart?;
    Address[] addresses?;
    # Primary contact phone number
    @jsondata:Name {value: "contact_phone"}
    string contactPhone?;
    # Keywords added by the organization to their profile
    string keywords?;
    @jsondata:Name {value: "social_media_urls"}
    string[] socialMediaUrls?;
    # Organization logo URL
    @jsondata:Name {value: "logo_url"}
    string logoUrl?;
    # EIN that should be used for charitable donations
    @jsondata:Name {value: "donation_to_ein"}
    string donationToEin?;
    # Description of what the affiliation code means
    @jsondata:Name {value: "affiliation_description"}
    string affiliationDescription?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "areas_served_narrative"}
    @deprecated
    string areasServedNarrative?;
    # Organization address county
    string county?;
    # URL of API call to the FTA PDF API endpoint to download the organization's financial trends analysis PDF
    @jsondata:Name {value: "gs_financial_trends_analysis_pdf"}
    string gsFinancialTrendsAnalysisPdf?;
    # Primary contact fax number
    @jsondata:Name {value: "contact_fax"}
    string contactFax?;
    # Description of organization subsection code
    @jsondata:Name {value: "subsection_description"}
    string subsectionDescription?;
    Video[] videos?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "impact_statement"}
    @deprecated
    string impactStatement?;
    @jsondata:Name {value: "ntee_codes"}
    NteeCode[] nteeCodes?;
    PhotoLink[] photos?;
    @jsondata:Name {value: "telephone_numbers"}
    TelephoneNumber[] telephoneNumbers?;
    # Url to Guidestar.org seal image
    @jsondata:Name {value: "gs_profile_update_level_logo"}
    string gsProfileUpdateLevelLogo?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt
    @jsondata:Name {value: "subsection_code"}
    string subsectionCode?;
    # Description of demographics status that can be displayed to a nonprofit
    @jsondata:Name {value: "demographics_status_nonprofit"}
    string demographicsStatusNonprofit?;
    # Organization address state
    string state?;
    # Organization fax number
    string fax?;
    # Longitude of the center of the zip code of an organizations mailing address
    string longitude?;
    # Description of demographics status that can be displayed to a funder or donor
    @jsondata:Name {value: "demographics_status"}
    string demographicsStatus?;
    # Organization address zip code
    string zip?;
    @jsondata:Name {value: "letters_of_determination"}
    LetterOfDetermination[] lettersOfDetermination?;
    @jsondata:Name {value: "formerly_known_as"}
    @deprecated
    FormerName[] formerlyKnownAs?;
    # Year that an organization was incorporated
    @jsondata:Name {value: "year_incorporated"}
    string yearIncorporated?;
    # Organization name
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
    # Response to 'How is your organization collecting feedback?'
    @jsondata:Name {value: "org_feedback_example"}
    string orgFeedbackExample?;
    @jsondata:Name {value: "feedback_responses"}
    FBResponseText[] feedbackResponses?;
    # Organization mission statement
    string mission?;
    # Guidestar.org organization profile seal of transparency level
    @jsondata:Name {value: "gs_profile_update_level"}
    string gsProfileUpdateLevel?;
    @jsondata:Name {value: "pcs_codes"}
    PCS[] pcsCodes?;
    # GuideStar internal organization ID
    @jsondata:Name {value: "organization_id"}
    int organizationId?;
    # UN sustainable development goals
    SDG sdg?;
    # First time organization appeared on the BMF
    @jsondata:Name {value: "first_on_bmf_date"}
    string firstOnBmfDate?;
    # Primary contact title
    @jsondata:Name {value: "contact_title"}
    string contactTitle?;
    # Deductibility code description
    @jsondata:Name {value: "deductibility_description"}
    string deductibilityDescription?;
    # Last time an organization appeared on the BMF
    @jsondata:Name {value: "last_on_bmf_date"}
    string lastOnBmfDate?;
    # Organization address city
    string city?;
    # Year that organization started operating as a non-profit
    @jsondata:Name {value: "ruling_year"}
    string rulingYear?;
    # Latitude of the center of the zip code of an organizations mailing address
    string latitude?;
    # Year that an organization was founded
    @jsondata:Name {value: "year_founded"}
    string yearFounded?;
    @deprecated
    Affiliation[] affiliations?;
    # Employee identification number
    string ein?;
    # Guidestar.org organization profile URL
    @jsondata:Name {value: "gs_public_report"}
    string gsPublicReport?;
    @jsondata:Name {value: "profile_sdg_codes"}
    SDG[] profileSdgCodes?;
    # Primary contact email
    @jsondata:Name {value: "contact_email"}
    string contactEmail?;
    @jsondata:Name {value: "letters_of_dissolution"}
    LetterOfDissolution[] lettersOfDissolution?;
    @jsondata:Name {value: "sic_codes"}
    SICCode[] sicCodes?;
    # Did the organization indicate they had an interest in taking guidestar's feedback quiz
    @jsondata:Name {value: "org_quiz_interest"}
    boolean orgQuizInterest?;
    @jsondata:Name {value: "profile_data_change_dates"}
    ProfileDataChangeDates profileDataChangeDates?;
    # Organization address street name
    @jsondata:Name {value: "address_line_1"}
    string addressLine1?;
    # Is the organization not on the BMF
    @jsondata:Name {value: "is_non_bmf_org"}
    boolean isNonBmfOrg?;
    # Organization address Suite or Apartment number
    @jsondata:Name {value: "address_line_2"}
    string addressLine2?;
    # Legal organization name
    @jsondata:Name {value: "govt_registered_name"}
    string govtRegisteredName?;
    # Comma separated string of names associated with the organization
    @jsondata:Name {value: "also_known_as"}
    string alsoKnownAs?;
    # Primary contact name
    @jsondata:Name {value: "contact_name"}
    string contactName?;
    @jsondata:Name {value: "forms_1023_1024"}
    string[] forms10231024?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    @jsondata:Name {value: "gs_pro_pdf"}
    string gsProPdf?;
    # Whether or not this organization is the national headquarters
    @jsondata:Name {value: "is_national_hq"}
    boolean isNationalHq?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption
    @jsondata:Name {value: "affiliation_code"}
    string affiliationCode?;
    # Organization name that should be used for charitable donations
    @jsondata:Name {value: "donation_to_name"}
    string donationToName?;
    # Organization website URL
    @jsondata:Name {value: "website_url"}
    string websiteUrl?;
    @deprecated
    Award[] awards?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "bridge_id"}
    @deprecated
    string bridgeId?;
    # Did the organization indicate they had an interest in learning more about feedback practices
    @jsondata:Name {value: "org_learn_more"}
    boolean orgLearnMore?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    @jsondata:Name {value: "deductibility_code"}
    string deductibilityCode?;
    @jsondata:Name {value: "platinum_evaluation_documents"}
    PlatinumEvaluationDocument[] platinumEvaluationDocuments?;
};

public type CharityCheckParentOrganizations record {
    # This is a four-digit internal number assigned to parent organizations holding group exemption letters
    @jsondata:Name {value: "group_exemption"}
    string groupExemption?;
    # EIN of parent organization
    string ein?;
    # Name of Parent Organization
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
};

# IRS 990 form Part VIII dealing with revenue
public type PartVIII record {
    # gross profit earned
    @jsondata:Name {value: "gross_profit"}
    decimal grossProfit?;
    # revenue from services
    @jsondata:Name {value: "service_revenue"}
    decimal serviceRevenue?;
    # Rental Income-real
    @jsondata:Name {value: "rent_income_real"}
    decimal rentIncomeReal?;
    # Gain or loss on sale of assets-securities
    @jsondata:Name {value: "gain_securities"}
    decimal gainSecurities?;
    # net special revenue
    @jsondata:Name {value: "net_special"}
    decimal netSpecial?;
    # revenue from related orgs
    @jsondata:Name {value: "related_orgs"}
    decimal relatedOrgs?;
    # Personal rental expense
    @jsondata:Name {value: "rent_expenses_personal"}
    decimal rentExpensesPersonal?;
    # revenue from contributions
    decimal contributions?;
    # Gross Rent-real
    @jsondata:Name {value: "rents_real"}
    decimal rentsReal?;
    # revenue from membership dues
    @jsondata:Name {value: "membership_dues"}
    decimal membershipDues?;
    # Less cost of sale of assets-securities
    @jsondata:Name {value: "cost_securities"}
    decimal costSecurities?;
    # Program service code (a)
    @jsondata:Name {value: "service_code_a"}
    decimal serviceCodeA?;
    # Rental Income-personal
    @jsondata:Name {value: "rent_income_personal"}
    decimal rentIncomePersonal?;
    # Program service code (c)
    @jsondata:Name {value: "service_code_c"}
    decimal serviceCodeC?;
    # Program service code (b)
    @jsondata:Name {value: "service_code_b"}
    decimal serviceCodeB?;
    # Program service code (e)
    @jsondata:Name {value: "service_code_e"}
    decimal serviceCodeE?;
    # Program service code (d)
    @jsondata:Name {value: "service_code_d"}
    decimal serviceCodeD?;
    # gross special revenue
    @jsondata:Name {value: "gross_special"}
    decimal grossSpecial?;
    # Program service code (f)
    @jsondata:Name {value: "service_code_f"}
    decimal serviceCodeF?;
    # Gross sales of assets-other
    @jsondata:Name {value: "gross_other"}
    decimal grossOther?;
    # total revenue from other contributions
    @jsondata:Name {value: "contributions_all"}
    decimal contributionsAll?;
    # Gross Rent -personal
    @jsondata:Name {value: "rents_personal"}
    decimal rentsPersonal?;
    # revenue from government grants
    @jsondata:Name {value: "government_grants"}
    decimal governmentGrants?;
    # revenue from income investments
    @jsondata:Name {value: "income_investment"}
    decimal incomeInvestment?;
    # net revenue from sales
    @jsondata:Name {value: "net_sales"}
    decimal netSales?;
    # other revenue
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # gross revenue from sales
    @jsondata:Name {value: "gross_sales"}
    decimal grossSales?;
    # revenue from fundraising events
    @jsondata:Name {value: "fundraising_events"}
    decimal fundraisingEvents?;
    # total revenue
    @jsondata:Name {value: "revenue_total"}
    decimal revenueTotal?;
    # Real rental expense
    @jsondata:Name {value: "rent_expenses_real"}
    decimal rentExpensesReal?;
    # Gross sales of Assets-securities
    @jsondata:Name {value: "gross_securities"}
    decimal grossSecurities?;
    # second specially declared revenue-providing service
    @jsondata:Name {value: "service_description_b"}
    string serviceDescriptionB?;
    # revenue from service a
    @jsondata:Name {value: "service_amount_a"}
    decimal serviceAmountA?;
    # first specially declared revenue-providing service
    @jsondata:Name {value: "service_description_a"}
    string serviceDescriptionA?;
    # revenue from service b
    @jsondata:Name {value: "service_amount_b"}
    decimal serviceAmountB?;
    # revenue from service c
    @jsondata:Name {value: "service_amount_c"}
    decimal serviceAmountC?;
    # fourth specially declared revenue-providing service
    @jsondata:Name {value: "service_description_d"}
    string serviceDescriptionD?;
    # third specially declared revenue-providing service
    @jsondata:Name {value: "service_description_c"}
    string serviceDescriptionC?;
    # revenue from service d
    @jsondata:Name {value: "service_amount_d"}
    decimal serviceAmountD?;
    # Net Rental Income
    @jsondata:Name {value: "net_rental"}
    decimal netRental?;
    # Gross income from gaming
    @jsondata:Name {value: "gaming_income"}
    decimal gamingIncome?;
    # Net income from gaming
    @jsondata:Name {value: "gaming_net"}
    decimal gamingNet?;
    # revenue from service e
    @jsondata:Name {value: "service_amount_e"}
    decimal serviceAmountE?;
    # sixth specially declared revenue-providing service
    @jsondata:Name {value: "service_description_f"}
    string serviceDescriptionF?;
    # fifth specially declared revenue-providing service
    @jsondata:Name {value: "service_description_e"}
    string serviceDescriptionE?;
    # revenue from service f
    @jsondata:Name {value: "service_amount_f"}
    decimal serviceAmountF?;
    # Gain or loss on sale of assets-other
    @jsondata:Name {value: "gain_other"}
    decimal gainOther?;
    # revenue from income bonds
    @jsondata:Name {value: "income_bonds"}
    decimal incomeBonds?;
    # Less cost of sales of assets-other
    @jsondata:Name {value: "cost_other"}
    decimal costOther?;
    # revenue from other noncash contributions
    @jsondata:Name {value: "contributions_noncash"}
    decimal contributionsNoncash?;
    # cost of goods
    @jsondata:Name {value: "cost_goods"}
    decimal costGoods?;
    # direct expenses for the organization
    @jsondata:Name {value: "direct_expenses"}
    decimal directExpenses?;
    # revenue from federated campaigns
    @jsondata:Name {value: "federated_campaigns"}
    decimal federatedCampaigns?;
    # revenue from royalties
    decimal royalties?;
    # Less expenses from gaming
    @jsondata:Name {value: "gaming_expenses"}
    decimal gamingExpenses?;
    # revenue from other contributions
    @jsondata:Name {value: "contributions_other"}
    decimal contributionsOther?;
};

# Telephone number associated with organization
public type TelephoneNumber record {
    # Description of telephone number
    @jsondata:Name {value: "telephone_type"}
    string telephoneType?;
    # Telephone number entered by organization
    @jsondata:Name {value: "telephone_number"}
    string telephoneNumber?;
};

public type V1PublicProfileData record {
    # Information about the non-profit, such as name and address
    Summary1 summary?;
    # Organization financial information
    Financials2 financials?;
    # Organization operations information
    Operations1 operations?;
    # Organization Charity Check information
    CharityCheck charitycheck?;
    # Collection of an organizations programs and program metrics
    Programs1 programs?;
};

public type Ratios record {
    # The cost of employee benefits divided by the wages paid to employees. Calculated using the formula: Pensions plus Benefits plus Payroll Tax Totals divided by Current Compensation plus Total Wages
    @jsondata:Name {value: "fringe_rate"}
    string fringeRate?;
    # The amount of net gain or net loss
    @jsondata:Name {value: "net_gain_loss"}
    string netGainLoss?;
    # The fiscal year
    int:Signed32 year?;
    # The ratio of an organization's capacity to repay its current liabilities through cash and cash equivalents. Metric calculated using the 'Quick Ratio' (Cash + Savings + Short Term Investments + Accounts Receivable) / Total Liabilities
    string liquidity?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula: Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months
    @jsondata:Name {value: "months_of_cash"}
    string monthsOfCash?;
};

# IRS 990 form Part IX dealing with expenses
public type PartIX record {
    # expenses from insurance
    decimal insurance?;
    # Depreciation, depletion, and amortization
    @jsondata:Name {value: "depreciation_total"}
    decimal depreciationTotal?;
    # total expenses
    @jsondata:Name {value: "expenses_total"}
    decimal expensesTotal?;
    # second specially declared source of expense
    @jsondata:Name {value: "expense_b_description"}
    string expenseBDescription?;
    # expenses from disqualified employee compensation
    @jsondata:Name {value: "compensation_disqualified"}
    decimal compensationDisqualified?;
    # expenses from payments
    decimal payments?;
    # third specially declared source of expense
    @jsondata:Name {value: "expense_c_description"}
    string expenseCDescription?;
    # expenses from specially declared source e
    @jsondata:Name {value: "expense_e_total"}
    decimal expenseETotal?;
    # Payment of travel for officials
    @jsondata:Name {value: "entertain_officials"}
    decimal entertainOfficials?;
    # total expenses from meetings
    @jsondata:Name {value: "meetings_total"}
    decimal meetingsTotal?;
    # total joint expenses
    @jsondata:Name {value: "expense_joint_total"}
    decimal expenseJointTotal?;
    # expenses from other fees
    @jsondata:Name {value: "fees_other"}
    decimal feesOther?;
    # office expenses
    decimal office?;
    # expenses from promotional advertising
    @jsondata:Name {value: "ads_promo"}
    decimal adsPromo?;
    # expenses from lobbying fees
    @jsondata:Name {value: "fees_lobbying"}
    decimal feesLobbying?;
    # expenses from specially declared source a
    @jsondata:Name {value: "expense_a_total"}
    decimal expenseATotal?;
    # joint fundraising expenses
    @jsondata:Name {value: "joint_fundraising"}
    decimal jointFundraising?;
    # first specially declared source of expense
    @jsondata:Name {value: "expense_a_description"}
    string expenseADescription?;
    # current expenses from employee compensation
    @jsondata:Name {value: "compensation_current"}
    decimal compensationCurrent?;
    # expenses from employee pensions
    @jsondata:Name {value: "pension_total"}
    decimal pensionTotal?;
    # expenses from management fees
    @jsondata:Name {value: "fees_management"}
    decimal feesManagement?;
    # total expenses from tax on payroll
    @jsondata:Name {value: "payroll_tax_total"}
    decimal payrollTaxTotal?;
    # expenses from royalties
    @jsondata:Name {value: "expense_royalties"}
    decimal expenseRoyalties?;
    # total fundraising expenses
    @jsondata:Name {value: "fundraising_total"}
    decimal fundraisingTotal?;
    # total expenses from employee benefits
    @jsondata:Name {value: "employee_benefits_total"}
    decimal employeeBenefitsTotal?;
    # expenses from specially declared source b
    @jsondata:Name {value: "expense_b_total"}
    decimal expenseBTotal?;
    # expenses from joint services
    @jsondata:Name {value: "joint_services"}
    decimal jointServices?;
    # expenses from all other sources
    @jsondata:Name {value: "all_other_expenses"}
    decimal allOtherExpenses?;
    # expenses from grants issued to US organizations
    @jsondata:Name {value: "grants_orgs_us"}
    decimal grantsOrgsUs?;
    # total expenses from accounting fees
    @jsondata:Name {value: "accounting_fees_total"}
    decimal accountingFeesTotal?;
    # general joint expenses
    @jsondata:Name {value: "joint_general"}
    decimal jointGeneral?;
    # total expenses from benefits programs
    @jsondata:Name {value: "benefits_total"}
    decimal benefitsTotal?;
    # expenses from legal fees
    @jsondata:Name {value: "fees_legal"}
    decimal feesLegal?;
    # expenses from specially declared source d
    @jsondata:Name {value: "expense_d_total"}
    decimal expenseDTotal?;
    # expenses from investment fees
    @jsondata:Name {value: "fees_investments"}
    decimal feesInvestments?;
    # expenses from grants issued to US individuals
    @jsondata:Name {value: "grants_individuals_us"}
    decimal grantsIndividualsUs?;
    # total expenses from interest accrued
    @jsondata:Name {value: "interest_total"}
    decimal interestTotal?;
    # total expenses from employee wages
    @jsondata:Name {value: "wages_total"}
    decimal wagesTotal?;
    # IT expenses
    @jsondata:Name {value: "information_technology"}
    decimal informationTechnology?;
    # expenses from grants issued to non US organizations
    @jsondata:Name {value: "grants_orgs_non_us"}
    decimal grantsOrgsNonUs?;
    # Occupancy
    @jsondata:Name {value: "occupancy_total"}
    decimal occupancyTotal?;
    # total management expenses
    @jsondata:Name {value: "total_management"}
    decimal totalManagement?;
    # total expenses from program services
    @jsondata:Name {value: "total_program_services"}
    decimal totalProgramServices?;
    # fourth specially declared source of expense
    @jsondata:Name {value: "expense_d_description"}
    string expenseDDescription?;
    # total fundraising expenses
    @jsondata:Name {value: "total_fundraising"}
    decimal totalFundraising?;
    # total expenses from travel
    @jsondata:Name {value: "travel_total"}
    decimal travelTotal?;
    # expenses from specially declared source c
    @jsondata:Name {value: "expense_c_total"}
    decimal expenseCTotal?;
};

public type Contractor record {
    # The type of service the contractor provided
    @jsondata:Name {value: "service_type"}
    string serviceType?;
    # The contractors address
    string address?;
    # The contractors name
    string name?;
    # The contractors compensation
    string compensation?;
};

# UN sustainable development goals
public type SDG record {
    # UN sustainable development goal description
    string description?;
    # UN sustainable development goal number
    int:Signed32 id?;
};

public type BoardMember record {
    # The board member's first and last name
    string name?;
    # The company the board member works for
    string company?;
    # DEPRECATED
    # 
    # # Deprecated
    @deprecated
    string title?;
};

@deprecated
public type Accreditation record {
    # DEPRECATED
    string year?;
    # DEPRECATED
    string accreditation?;
};

# Category for demographics
# 
# # Deprecated
@deprecated
public type DemographicsCategory record {
    # DEPRECATED
    string category?;
    # DEPRECATED
    # 
    # # Deprecated
    @deprecated
    DemographicsSubCategory[] subcategories?;
    @jsondata:Name {value: "org_does_not_collect_for"}
    @deprecated
    record {|boolean...;|} orgDoesNotCollectFor?;
};

# IRS form 990-EZ financials
public type FinancialF990EZ record {
    # Contributions, gifts, grants, and similar amounts received 
    @jsondata:Name {value: "revenue_contributions"}
    decimal revenueContributions?;
    # Total all other revenue
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # Gross sales of inventory, less returns and allowances
    @jsondata:Name {value: "revenue_sales_inventory"}
    decimal revenueSalesInventory?;
    # Investment income
    @jsondata:Name {value: "revenue_investments"}
    decimal revenueInvestments?;
    # Beginning of year cash, savings, and investments
    @jsondata:Name {value: "cash_savings_investments_boy"}
    decimal cashSavingsInvestmentsBoy?;
    # Printing, publications, postage, and shipping
    @jsondata:Name {value: "expense_printing_publications_postage"}
    decimal expensePrintingPublicationsPostage?;
    # Total functional expenses
    @jsondata:Name {value: "total_expenses"}
    decimal totalExpenses?;
    # End of year cash, savings, and investments
    @jsondata:Name {value: "cash_savings_investments_eoy"}
    decimal cashSavingsInvestmentsEoy?;
    # Benefits paid to or for members
    @jsondata:Name {value: "expense_benefits"}
    decimal expenseBenefits?;
    # Tax year begin date
    @jsondata:Name {value: "period_begin"}
    string periodBegin?;
    # Gain or (loss) from sale of assets other than inventory 
    @jsondata:Name {value: "revenue_sales_other"}
    decimal revenueSalesOther?;
    # End of year other assets
    @jsondata:Name {value: "other_assets_eoy"}
    decimal otherAssetsEoy?;
    # Other changes in net assets or fund balances
    @jsondata:Name {value: "other_changes"}
    decimal otherChanges?;
    # Professional fees and other payments to independent contractors
    @jsondata:Name {value: "expense_professional_fees"}
    decimal expenseProfessionalFees?;
    # End of year land and buildings assets
    @jsondata:Name {value: "land_and_buidings_eoy"}
    decimal landAndBuidingsEoy?;
    # Beginning of year total assets
    @jsondata:Name {value: "total_assets_boy"}
    decimal totalAssetsBoy?;
    # Beginning of year land and buildings assets
    @jsondata:Name {value: "land_and_buidings_boy"}
    decimal landAndBuidingsBoy?;
    # End of year total assets
    @jsondata:Name {value: "total_assets_eoy"}
    decimal totalAssetsEoy?;
    # End of year total liabilities
    @jsondata:Name {value: "total_liabilities_eoy"}
    decimal totalLiabilitiesEoy?;
    # Candid use only
    @jsondata:Name {value: "date_last_modified"}
    string dateLastModified?;
    # Beginning of year total liabilities
    @jsondata:Name {value: "total_liabilities_boy"}
    decimal totalLiabilitiesBoy?;
    # Net income or (loss) from gaming and fundraising events
    @jsondata:Name {value: "revenue_special_events"}
    decimal revenueSpecialEvents?;
    # Salaries, other compensation, and employee benefits
    @jsondata:Name {value: "expense_salaries_employee_benefits"}
    decimal expenseSalariesEmployeeBenefits?;
    # Occupancy, rent, utilities, and maintenance
    @jsondata:Name {value: "expense_occupancy"}
    decimal expenseOccupancy?;
    # Net assets or fund balances at the end of the year
    @jsondata:Name {value: "net_assets_eoy"}
    decimal netAssetsEoy?;
    @jsondata:Name {value: "part_1_revenue_expenses"}
    EZFinancialsPartI part1RevenueExpenses?;
    # Beginning of year other assets
    @jsondata:Name {value: "other_assets_boy"}
    decimal otherAssetsBoy?;
    # Net assets or fund balances at the beginning of the year
    @jsondata:Name {value: "net_assets_boy"}
    decimal netAssetsBoy?;
    # Tax year end date
    @jsondata:Name {value: "period_end"}
    string periodEnd?;
    # Gross sales of inventory, less returns and allowances
    @jsondata:Name {value: "revenue_sales"}
    decimal revenueSales?;
    # Excess or (deficit) for the year
    @jsondata:Name {value: "net_gain_loss"}
    decimal netGainLoss?;
    # Accounting Method
    @jsondata:Name {value: "accounting_method"}
    string accountingMethod?;
    @jsondata:Name {value: "part_2_balance_sheet"}
    EZFinancialsPartII part2BalanceSheet?;
    # Membership dues and assessments revenues
    @jsondata:Name {value: "revenue_membership_dues"}
    decimal revenueMembershipDues?;
    # Total revenue - Current Year
    @jsondata:Name {value: "total_revenue"}
    decimal totalRevenue?;
    # Program service revenue including government fees and contracts
    @jsondata:Name {value: "revenue_program_services"}
    decimal revenueProgramServices?;
    # Grants and similar amounts paid
    @jsondata:Name {value: "expense_grants"}
    decimal expenseGrants?;
    # Tax-exempt status
    @jsondata:Name {value: "organization_type"}
    string organizationType?;
    # Other expenses
    @jsondata:Name {value: "expense_other"}
    decimal expenseOther?;
};

@deprecated
public type OtherStaff record {
    # DEPRECATED
    string name?;
    # DEPRECATED
    string title?;
    # DEPRECATED
    string 'type?;
};

# IRS form 990 financials
public type FinancialF9903 record {
    # Total FY expenses
    @jsondata:Name {value: "expenses_total"}
    decimal expensesTotal?;
    # Contributions revenue, i.e. donations, in USD
    @jsondata:Name {value: "revenue_contributions"}
    decimal revenueContributions?;
    # Other revenue sources, not recorded elsewhere
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # Expenses not recorded elsewhere
    @jsondata:Name {value: "other_expense"}
    decimal otherExpense?;
    # Revenue from investments
    @jsondata:Name {value: "revenue_investments"}
    decimal revenueInvestments?;
    @jsondata:Name {value: "part_8_revenue"}
    PartVIII part8Revenue?;
    # Professional fundraising expenses
    @jsondata:Name {value: "expense_profesional_fundraising"}
    decimal expenseProfesionalFundraising?;
    # Unrestricted new assets
    @jsondata:Name {value: "unrestricted_net_assets"}
    decimal unrestrictedNetAssets?;
    # Fundraising expenses
    @jsondata:Name {value: "expense_fundraising"}
    decimal expenseFundraising?;
    @jsondata:Name {value: "part_9_expenses"}
    PartIX part9Expenses?;
    # Government grants revenue, in USD
    @jsondata:Name {value: "revenue_govt_grants"}
    decimal revenueGovtGrants?;
    # Total FY revenue
    @jsondata:Name {value: "revenue_total"}
    decimal revenueTotal?;
    # Net fixed assets (Land, Buildings, equipment)
    @jsondata:Name {value: "net_fixed_assets_LBE"}
    decimal netFixedAssetsLBE?;
    # Start date of the FY that this current financial object covers
    @jsondata:Name {value: "period_begin"}
    string periodBegin?;
    # Advertising/promotional expenses
    @jsondata:Name {value: "expense_advertising_promotion"}
    decimal expenseAdvertisingPromotion?;
    # Accounting expenses
    @jsondata:Name {value: "expense_accounting"}
    decimal expenseAccounting?;
    # Net assets at the end of year
    @jsondata:Name {value: "net_assets_end_of_year"}
    decimal netAssetsEndOfYear?;
    # Revenue from recurring membership dues
    @jsondata:Name {value: "membership_dues"}
    decimal membershipDues?;
    # IT expenses
    @jsondata:Name {value: "expense_info_technology"}
    decimal expenseInfoTechnology?;
    # Insurance expenses
    @jsondata:Name {value: "expense_insurance"}
    decimal expenseInsurance?;
    # Revenue from special events
    @jsondata:Name {value: "revenue_special_events"}
    decimal revenueSpecialEvents?;
    # Total liabilities at the end of year
    @jsondata:Name {value: "liabilities_total"}
    decimal liabilitiesTotal?;
    # Investment management expenses
    @jsondata:Name {value: "expense_investment_management"}
    decimal expenseInvestmentManagement?;
    # Payments to affiliate organizations
    @jsondata:Name {value: "affiliate_net_payments"}
    decimal affiliateNetPayments?;
    # Publications expenses
    @jsondata:Name {value: "expense_publications"}
    decimal expensePublications?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months
    @jsondata:Name {value: "months_of_cash"}
    string monthsOfCash?;
    # Expenses incurred from program services
    @jsondata:Name {value: "expense_program_services"}
    decimal expenseProgramServices?;
    # Administration expenses
    @jsondata:Name {value: "expense_administration"}
    decimal expenseAdministration?;
    # End date of the fiscal year that this current financial object covers
    @jsondata:Name {value: "period_end"}
    string periodEnd?;
    @jsondata:Name {value: "part_10_balance_sheet"}
    PartX part10BalanceSheet?;
    # Revenue from sales of tangible items
    @jsondata:Name {value: "revenue_sales"}
    decimal revenueSales?;
    # Difference between total revenue and total expenses
    @jsondata:Name {value: "net_gain_loss"}
    decimal netGainLoss?;
    # Legal expenses
    @jsondata:Name {value: "expense_legal"}
    decimal expenseLegal?;
    # Revenue derived from fees for program services
    @jsondata:Name {value: "revenue_program_services"}
    decimal revenueProgramServices?;
    # Total assets
    @jsondata:Name {value: "assets_total"}
    decimal assetsTotal?;
    # Interest expenses
    @jsondata:Name {value: "expense_interest"}
    decimal expenseInterest?;
    # Pension plan expenses
    @jsondata:Name {value: "expense_pension_plan"}
    decimal expensePensionPlan?;
    # total amount of secured mortgages and notes payable to unrelated third parties that are secured by the organization's assets
    @jsondata:Name {value: "notes_payable_mortgages"}
    decimal notesPayableMortgages?;
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

# DEPRECATED
# 
# # Deprecated
@deprecated
public type Affiliation record {
    # DEPRECATED
    string affiliation?;
    # DEPRECATED
    string year?;
};

public type V3PublicProfile record {
    # Time taken for request to process
    int took?;
    # HTTP response status code
    int code?;
    V3PublicProfileData data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

# IRS 990 document, possibly uploaded by the organization
public type FinDoc record {
    # URL to access this document
    @jsondata:Name {value: "form990_url"}
    string form990Url?;
    # Source of document
    @jsondata:Name {value: "form990_source"}
    string form990Source?;
    # File name document uploaded as
    @jsondata:Name {value: "form990_name"}
    string form990Name?;
    # Year file pertains to
    @jsondata:Name {value: "form990_year"}
    string form990Year?;
};

public type Form990T record {
    # The name of the file
    @jsondata:Name {value: "form990t_name"}
    string form990tName?;
    # URL for the organization's Form 990 T
    @jsondata:Name {value: "form990t_url"}
    string form990tUrl?;
};

# IRS form 990 financials
public type FinancialF9902 record {
    # Total FY expenses
    @jsondata:Name {value: "expenses_total"}
    decimal expensesTotal?;
    # Contributions revenue, i.e. donations, in USD
    @jsondata:Name {value: "revenue_contributions"}
    decimal revenueContributions?;
    # Other revenue sources, not recorded elsewhere
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # Expenses not recorded elsewhere
    @jsondata:Name {value: "other_expense"}
    decimal otherExpense?;
    # Revenue from investments
    @jsondata:Name {value: "revenue_investments"}
    decimal revenueInvestments?;
    # Professional fundraising expenses
    @jsondata:Name {value: "expense_profesional_fundraising"}
    decimal expenseProfesionalFundraising?;
    # Unrestricted new assets
    @jsondata:Name {value: "unrestricted_net_assets"}
    decimal unrestrictedNetAssets?;
    # Fundraising expenses
    @jsondata:Name {value: "expense_fundraising"}
    decimal expenseFundraising?;
    # Government grants revenue, in USD
    @jsondata:Name {value: "revenue_govt_grants"}
    decimal revenueGovtGrants?;
    # Total FY revenue
    @jsondata:Name {value: "revenue_total"}
    decimal revenueTotal?;
    # Net fixed assets (Land, Buildings, equipment)
    @jsondata:Name {value: "net_fixed_assets_LBE"}
    decimal netFixedAssetsLBE?;
    # Start date of the FY that this current financial object covers
    @jsondata:Name {value: "period_begin"}
    string periodBegin?;
    # Advertising/promotional expenses
    @jsondata:Name {value: "expense_advertising_promotion"}
    decimal expenseAdvertisingPromotion?;
    # Accounting expenses
    @jsondata:Name {value: "expense_accounting"}
    decimal expenseAccounting?;
    # Net assets at the end of year
    @jsondata:Name {value: "net_assets_end_of_year"}
    decimal netAssetsEndOfYear?;
    # Revenue from recurring membership dues
    @jsondata:Name {value: "membership_dues"}
    decimal membershipDues?;
    # IT expenses
    @jsondata:Name {value: "expense_info_technology"}
    decimal expenseInfoTechnology?;
    # Insurance expenses
    @jsondata:Name {value: "expense_insurance"}
    decimal expenseInsurance?;
    # Revenue from special events
    @jsondata:Name {value: "revenue_special_events"}
    decimal revenueSpecialEvents?;
    # Total liabilities at the end of year
    @jsondata:Name {value: "liabilities_total"}
    decimal liabilitiesTotal?;
    # Investment management expenses
    @jsondata:Name {value: "expense_investment_management"}
    decimal expenseInvestmentManagement?;
    # Payments to affiliate organizations
    @jsondata:Name {value: "affiliate_net_payments"}
    decimal affiliateNetPayments?;
    # Publications expenses
    @jsondata:Name {value: "expense_publications"}
    decimal expensePublications?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months
    @jsondata:Name {value: "months_of_cash"}
    string monthsOfCash?;
    # Expenses incurred from program services
    @jsondata:Name {value: "expense_program_services"}
    decimal expenseProgramServices?;
    # Administration expenses
    @jsondata:Name {value: "expense_administration"}
    decimal expenseAdministration?;
    # End date of the fiscal year that this current financial object covers
    @jsondata:Name {value: "period_end"}
    string periodEnd?;
    # Revenue from sales of tangible items
    @jsondata:Name {value: "revenue_sales"}
    decimal revenueSales?;
    # Difference between total revenue and total expenses
    @jsondata:Name {value: "net_gain_loss"}
    decimal netGainLoss?;
    # Legal expenses
    @jsondata:Name {value: "expense_legal"}
    decimal expenseLegal?;
    # Revenue derived from fees for program services
    @jsondata:Name {value: "revenue_program_services"}
    decimal revenueProgramServices?;
    # Total assets
    @jsondata:Name {value: "assets_total"}
    decimal assetsTotal?;
    # Interest expenses
    @jsondata:Name {value: "expense_interest"}
    decimal expenseInterest?;
    # Pension plan expenses
    @jsondata:Name {value: "expense_pension_plan"}
    decimal expensePensionPlan?;
    # total amount of secured mortgages and notes payable to unrelated third parties that are secured by the organization's assets
    @jsondata:Name {value: "notes_payable_mortgages"}
    decimal notesPayableMortgages?;
};

# Contains the last change datetimes for several key data values
public type ProfileDataChangeDates record {
    # Datetime of last update to organization seal level
    @jsondata:Name {value: "seal_last_modified"}
    string sealLastModified?;
    # Datetime of last update to payment address
    @jsondata:Name {value: "payment_address_last_modified"}
    string paymentAddressLastModified?;
    # Datetime of last update to organization website address
    @jsondata:Name {value: "org_website_last_modified"}
    string orgWebsiteLastModified?;
    # Datetime of last update to primary address
    @jsondata:Name {value: "primary_address_last_modified"}
    string primaryAddressLastModified?;
    # Datetime of last update to fundraising contact email address
    @jsondata:Name {value: "fundraising_contact_email_last_modified"}
    string fundraisingContactEmailLastModified?;
    # Datetime of last update to organization demographics information
    @jsondata:Name {value: "dei_last_modified"}
    string deiLastModified?;
    # Datetime of last update to primary contact email address
    @jsondata:Name {value: "primary_contact_email_last_modified"}
    string primaryContactEmailLastModified?;
};

# expense composition section of financial trends analysis
public type ExpenseComposition record {
    # professional fees expenses
    @jsondata:Name {value: "professional_fees"}
    string professionalFees?;
    # expenses from interest
    @jsondata:Name {value: "interest_expense"}
    string interestExpense?;
    # total expenses before depreciation
    @jsondata:Name {value: "total_expenses_before_depreciation"}
    int totalExpensesBeforeDepreciation?;
    # occupancy expenses
    string occupancy?;
    # Pass through expenses
    @jsondata:Name {value: "pass_through"}
    string passThrough?;
    # total expenses percent change over the prior year
    @jsondata:Name {value: "total_expenses_percent_change_over_prior_year"}
    string totalExpensesPercentChangeOverPriorYear?;
    # personnel expenses
    string personnel?;
    # all other expenses
    @jsondata:Name {value: "all_other_expenses"}
    string allOtherExpenses?;
};

# A document the organization uploaded to GuideStar
public type OtherDocument record {
    # Document name entered by organization
    @jsondata:Name {value: "document_name"}
    string documentName?;
    # Year document is associated with
    @jsondata:Name {value: "document_year"}
    string documentYear?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "otherdocument_contents"}
    @deprecated
    string otherdocumentContents?;
    # URL to document
    @jsondata:Name {value: "document_url"}
    string documentUrl?;
};

public type V3PublicProfileData record {
    # Information about the non-profit, such as name and address
    Summary3 summary?;
    # Organization financial information
    Financials3 financials?;
    # Organization operations information
    Operations2 operations?;
    # Organization Charity Check information
    CharityCheck charitycheck?;
    # Collection of an organizations programs and program metrics
    Programs3 programs?;
};

# Program metrics entered by the organization
public type PlatinumMetrics record {
    # The target populations that the metric supports
    @jsondata:Name {value: "target_population_served"}
    string[] targetPopulationServed?;
    # Metric name
    string metric?;
    # How this metric is being measured
    @jsondata:Name {value: "type_of_metric"}
    string typeOfMetric?;
    # How to determine if this metric is showing a successful trend
    @jsondata:Name {value: "direction_of_success"}
    string directionOfSuccess?;
    # The years this metric was captured and the values for a given year
    MetricYear[] years?;
};

# Financial Trends Analysis for 990 filers
public type FinancialTrends record {
    @jsondata:Name {value: "capital_structure_indicators"}
    CapitalStructureIndicators capitalStructureIndicators?;
    # The fiscal year as a number
    @jsondata:Name {value: "fiscal_year"}
    string fiscalYear?;
    @jsondata:Name {value: "business_model_indicators"}
    BusinessModelIndicators businessModelIndicators?;
    @jsondata:Name {value: "key_data_checks"}
    KeyDataChecks keyDataChecks?;
};

# Collection of an organizations programs and program metrics
public type Programs2 record {
    @jsondata:Name {value: "charting_impact_answers"}
    Question[] chartingImpactAnswers?;
    @jsondata:Name {value: "platinum_metrics"}
    PlatinumMetrics[] platinumMetrics?;
    Program2[] programs?;
};

# IRS 990 form Part X, Balance Sheet
public type PartX record {
    # beginning of year accounts payable
    @jsondata:Name {value: "accounts_payable_boy"}
    decimal accountsPayableBoy?;
    # beginning of year loans receivable
    @jsondata:Name {value: "loans_receivable_boy"}
    decimal loansReceivableBoy?;
    # Land, buildings, and equipment: cost basis
    @jsondata:Name {value: "lbe_base"}
    decimal lbeBase?;
    # Paid-in or capital surplus, or land, building, or equipment fund:  end of year
    @jsondata:Name {value: "paid_in_eoy"}
    decimal paidInEoy?;
    # end of year grants payable
    @jsondata:Name {value: "grants_payable_eoy"}
    decimal grantsPayableEoy?;
    # beginning of year escrow liability
    @jsondata:Name {value: "escrow_liability_boy"}
    decimal escrowLiabilityBoy?;
    # end of year secured notes payable
    @jsondata:Name {value: "secured_notes_payable_eoy"}
    decimal securedNotesPayableEoy?;
    # Unrestricted net assets: end of year
    @jsondata:Name {value: "unrestricted_eoy"}
    decimal unrestrictedEoy?;
    # Permanently restricted net assets: End of year
    @jsondata:Name {value: "permanently_restricted_eoy"}
    decimal permanentlyRestrictedEoy?;
    # end of year public securities
    @jsondata:Name {value: "public_securities_eoy"}
    decimal publicSecuritiesEoy?;
    # end of year other assets
    @jsondata:Name {value: "other_assets_eoy"}
    decimal otherAssetsEoy?;
    # end ofyear other securities
    @jsondata:Name {value: "other_securities_eoy"}
    decimal otherSecuritiesEoy?;
    # end of year net total
    @jsondata:Name {value: "net_total_eoy"}
    decimal netTotalEoy?;
    # beginning of year balances
    @jsondata:Name {value: "balances_boy"}
    decimal balancesBoy?;
    # end of year tax exempt bonds
    @jsondata:Name {value: "tax_exempt_bonds_eoy"}
    decimal taxExemptBondsEoy?;
    # beginning of year deferred revenue
    @jsondata:Name {value: "deferred_revenue_boy"}
    decimal deferredRevenueBoy?;
    # end of year total asstes
    @jsondata:Name {value: "assets_total_eoy"}
    decimal assetsTotalEoy?;
    # Temporarily restricted net assets: Beginning of year
    @jsondata:Name {value: "temporarily_restricted_boy"}
    decimal temporarilyRestrictedBoy?;
    # beginning of year intangible assets
    @jsondata:Name {value: "intangible_assets_boy"}
    decimal intangibleAssetsBoy?;
    # end of year savings
    @jsondata:Name {value: "savings_eoy"}
    decimal savingsEoy?;
    # beginning of year prepaid
    @jsondata:Name {value: "prepaid_boy"}
    decimal prepaidBoy?;
    # end of year investment programs
    @jsondata:Name {value: "investment_programs_eoy"}
    decimal investmentProgramsEoy?;
    # beginning of year disqualified receivable
    @jsondata:Name {value: "disqualified_receivable_boy"}
    decimal disqualifiedReceivableBoy?;
    # Less:  accumulated depreciation
    @jsondata:Name {value: "less_depreciation"}
    decimal lessDepreciation?;
    # Retained earnings, endowment, accumulated income, or other funds:  beginning of year
    @jsondata:Name {value: "retained_boy"}
    decimal retainedBoy?;
    # Land and buildings BOY
    @jsondata:Name {value: "lbe_boy"}
    decimal lbeBoy?;
    # end of year capital
    @jsondata:Name {value: "capital_eoy"}
    decimal capitalEoy?;
    # beginning of year qualified receivable
    @jsondata:Name {value: "qualified_receivable_boy"}
    decimal qualifiedReceivableBoy?;
    # end of year unsecured notes payable
    @jsondata:Name {value: "unsecured_notes_payable_eoy"}
    decimal unsecuredNotesPayableEoy?;
    # beginning of year total liability
    @jsondata:Name {value: "liability_total_boy"}
    decimal liabilityTotalBoy?;
    # Temporarily restricted net assets: End of year + Permanently restricted net assets: Beginning of year
    @jsondata:Name {value: "restricted_eoy"}
    decimal restrictedEoy?;
    # beginning of year cash
    @jsondata:Name {value: "cash_boy"}
    decimal cashBoy?;
    # end of year inventory
    @jsondata:Name {value: "inventory_eoy"}
    decimal inventoryEoy?;
    # beginning of year payable officiers
    @jsondata:Name {value: "payable_officiers_boy"}
    decimal payableOfficiersBoy?;
    # end of year other liability
    @jsondata:Name {value: "liability_other_eoy"}
    decimal liabilityOtherEoy?;
    # Net pledges and grants receivable:  end of year
    @jsondata:Name {value: "pledges_grants_eoy"}
    decimal pledgesGrantsEoy?;
    # end of year accounts receivable
    @jsondata:Name {value: "accounts_receivable_eoy"}
    decimal accountsReceivableEoy?;
    # end of year accounts payable
    @jsondata:Name {value: "accounts_payable_eoy"}
    decimal accountsPayableEoy?;
    # Paid-in or capital surplus, or land, building, or equipment fund:  beginning of year
    @jsondata:Name {value: "paid_in_boy"}
    decimal paidInBoy?;
    # beginning of year grants payable
    @jsondata:Name {value: "grants_payable_boy"}
    decimal grantsPayableBoy?;
    # beginning of year public securities
    @jsondata:Name {value: "public_securities_boy"}
    decimal publicSecuritiesBoy?;
    # Unrestricted net assets: beginning of year
    @jsondata:Name {value: "unrestricted_boy"}
    decimal unrestrictedBoy?;
    # Permanently restricted net assets: Beginning of year
    @jsondata:Name {value: "permanently_restricted_boy"}
    decimal permanentlyRestrictedBoy?;
    # end of year escrow liability
    @jsondata:Name {value: "escrow_liability_eoy"}
    decimal escrowLiabilityEoy?;
    # beginning of year net total
    @jsondata:Name {value: "net_total_boy"}
    decimal netTotalBoy?;
    # end of year loans receivable
    @jsondata:Name {value: "loans_receivable_eoy"}
    decimal loansReceivableEoy?;
    # end of year total liability
    @jsondata:Name {value: "liability_total_eoy"}
    decimal liabilityTotalEoy?;
    # end of year balances
    @jsondata:Name {value: "balances_eoy"}
    decimal balancesEoy?;
    # end of year deferred revenue
    @jsondata:Name {value: "deferred_revenue_eoy"}
    decimal deferredRevenueEoy?;
    # beginning of year tax exempt bonds
    @jsondata:Name {value: "tax_exempt_bonds_boy"}
    decimal taxExemptBondsBoy?;
    # beginning of year total assets
    @jsondata:Name {value: "assets_total_boy"}
    decimal assetsTotalBoy?;
    # beginning of year other securities
    @jsondata:Name {value: "other_securities_boy"}
    decimal otherSecuritiesBoy?;
    # Temporarily restricted net assets: End of year
    @jsondata:Name {value: "temporarily_restricted_eoy"}
    decimal temporarilyRestrictedEoy?;
    # end of year disqualified receivable
    @jsondata:Name {value: "disqualified_receivable_eoy"}
    decimal disqualifiedReceivableEoy?;
    # beginning of year investment programs
    @jsondata:Name {value: "investment_programs_boy"}
    decimal investmentProgramsBoy?;
    # end of year prepaid
    @jsondata:Name {value: "prepaid_eoy"}
    decimal prepaidEoy?;
    # end of year intangible assets
    @jsondata:Name {value: "intangible_assets_eoy"}
    decimal intangibleAssetsEoy?;
    # Land and buildings EOY
    @jsondata:Name {value: "lbe_eoy"}
    decimal lbeEoy?;
    # beginning of year other assets
    @jsondata:Name {value: "other_assets_boy"}
    decimal otherAssetsBoy?;
    # beginning of year savings
    @jsondata:Name {value: "savings_boy"}
    decimal savingsBoy?;
    # Retained earnings, endowment, accumulated income, or other funds:  end of year
    @jsondata:Name {value: "retained_eoy"}
    decimal retainedEoy?;
    # Temporarily restricted net assets: Beginning of year + Permanently restricted net assets: Beginning of year
    @jsondata:Name {value: "restricted_boy"}
    decimal restrictedBoy?;
    # beginning of year inventory
    @jsondata:Name {value: "inventory_boy"}
    decimal inventoryBoy?;
    # end of year qualified receivable
    @jsondata:Name {value: "qualified_receivable_eoy"}
    decimal qualifiedReceivableEoy?;
    # beginning of year other liability
    @jsondata:Name {value: "liability_other_boy"}
    decimal liabilityOtherBoy?;
    # beginning of year secured notes payable
    @jsondata:Name {value: "secured_notes_payable_boy"}
    decimal securedNotesPayableBoy?;
    # end of year cash
    @jsondata:Name {value: "cash_eoy"}
    decimal cashEoy?;
    # Net pledges and grants receivable:  beginning of year
    @jsondata:Name {value: "pledges_grants_boy"}
    decimal pledgesGrantsBoy?;
    # beginning of year accounts receivable
    @jsondata:Name {value: "accounts_receivable_boy"}
    decimal accountsReceivableBoy?;
    # end of year payable officiers
    @jsondata:Name {value: "payable_officiers_eoy"}
    decimal payableOfficiersEoy?;
    # beginning of year unsecured notes payable
    @jsondata:Name {value: "unsecured_notes_payable_boy"}
    decimal unsecuredNotesPayableBoy?;
    # beginning of year capital
    @jsondata:Name {value: "capital_boy"}
    decimal capitalBoy?;
};

# Collection of an organizations programs and program metrics
public type Programs1 record {
    @jsondata:Name {value: "charting_impact_answers"}
    Question[] chartingImpactAnswers?;
    @jsondata:Name {value: "platinum_metrics"}
    PlatinumMetrics1[] platinumMetrics?;
    Program2[] programs?;
};

# demographic totals for staff
public type StaffLevelTotals record {
    # total number of staff
    @jsondata:Name {value: "total_staff"}
    string totalStaff?;
    # total number of board members
    @jsondata:Name {value: "total_board_members"}
    string totalBoardMembers?;
    # total number of senior staff
    @jsondata:Name {value: "total_senior_staff"}
    string totalSeniorStaff?;
};

# Video information added by organization
public type Video record {
    # URL to video
    @jsondata:Name {value: "video_url"}
    string videoUrl?;
    # Caption of video
    @jsondata:Name {value: "video_caption"}
    string videoCaption?;
};

# revenue composition section of financial trends analysis
public type RevenueComposition record {
    # other grants/contributions revenue
    @jsondata:Name {value: "other_grants_contributions"}
    string otherGrantsContributions?;
    # other revenue
    @jsondata:Name {value: "other_revenue"}
    string otherRevenue?;
    # total percent change in revenue over prior year
    @jsondata:Name {value: "total_revenue_percent_change_over_prior_year"}
    string totalRevenuePercentChangeOverPriorYear?;
    # total revenu, unrestricted and restricted
    @jsondata:Name {value: "total_revenue_unrestricted_and_restricted"}
    int totalRevenueUnrestrictedAndRestricted?;
    # total revenue prior
    @jsondata:Name {value: "total_revenue_prior"}
    decimal totalRevenuePrior?;
    # programs/services revenue
    @jsondata:Name {value: "program_svcs_revenue"}
    string programSvcsRevenue?;
    # membership dues revenue
    @jsondata:Name {value: "membership_dues"}
    string membershipDues?;
    # investment income revenue
    @jsondata:Name {value: "investment_income"}
    string investmentIncome?;
    # government grants revenue
    @jsondata:Name {value: "government_grants"}
    string governmentGrants?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type DemographicsSubCategory record {
    # DEPRECATED
    string subcategory?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "staff_levels"}
    @deprecated
    DemographicsStaffLevel[] staffLevels?;
};

# Collection of an organizations programs and program metrics
public type Programs3 record {
    @jsondata:Name {value: "charting_impact_answers"}
    Question[] chartingImpactAnswers?;
    @jsondata:Name {value: "platinum_metrics"}
    PlatinumMetrics[] platinumMetrics?;
    Program3[] programs?;
};

# liquidity capital structure indicator
public type Liquidity record {
    # months worth of cash and investments
    @jsondata:Name {value: "months_of_cash_and_investments"}
    decimal monthsOfCashAndInvestments?;
    # months worth of cash
    @jsondata:Name {value: "months_of_cash"}
    decimal monthsOfCash?;
    # estimated months worth of liquid unrestricted net assets
    @jsondata:Name {value: "months_of_estimated_liquid_unrestricted_net_assets"}
    decimal monthsOfEstimatedLiquidUnrestrictedNetAssets?;
};

# IRS form 990-PF financials 
public type Financial990PF record {
    # Total assets
    @jsondata:Name {value: "total_assets"}
    decimal totalAssets?;
    # Investments—corporate stock
    @jsondata:Name {value: "investments_stocks"}
    decimal investmentsStocks?;
    # Total operating and administrative expenses
    @jsondata:Name {value: "total_operating_expenses"}
    decimal totalOperatingExpenses?;
    # Total functional expenses
    @jsondata:Name {value: "total_expenses"}
    decimal totalExpenses?;
    # Tax year begin date
    @jsondata:Name {value: "period_begin"}
    string periodBegin?;
    # Other assets
    @jsondata:Name {value: "other_assets"}
    decimal otherAssets?;
    # Investments—corporate bonds
    @jsondata:Name {value: "investments_bonds"}
    decimal investmentsBonds?;
    # Contributions not included in 8a
    decimal contributions?;
    # Net investment income
    @jsondata:Name {value: "net_investment_income"}
    decimal netInvestmentIncome?;
    # Land, buildings, and equipment: basis
    @jsondata:Name {value: "land_buildings_equipment"}
    decimal landBuildingsEquipment?;
    # Accounting fees
    @jsondata:Name {value: "expense_accounting"}
    decimal expenseAccounting?;
    # Other professional fees
    @jsondata:Name {value: "expense_professional_fees"}
    decimal expenseProfessionalFees?;
    # Cash—non-interest-bearing,  Fair Market Value + Savings and temporary cash investments, Fair Market Value
    @jsondata:Name {value: "cash_equivalent_investible_assets"}
    decimal cashEquivalentInvestibleAssets?;
    # Total liabilities
    @jsondata:Name {value: "total_liabilities"}
    decimal totalLiabilities?;
    # Pension plans, employee benefits expenses
    @jsondata:Name {value: "expense_pension_plans"}
    decimal expensePensionPlans?;
    # Printing and publications expenses
    @jsondata:Name {value: "expense_publications"}
    decimal expensePublications?;
    # Investments—other
    @jsondata:Name {value: "investments_other"}
    decimal investmentsOther?;
    # Tax year end date
    @jsondata:Name {value: "period_end"}
    string periodEnd?;
    # Legal fees
    @jsondata:Name {value: "expense_legal"}
    decimal expenseLegal?;
    # Total assets, Fair Market Value - Total liabilities, Book Value
    @jsondata:Name {value: "net_assets"}
    decimal netAssets?;
    # Total revenue - Current Year
    @jsondata:Name {value: "income_total"}
    decimal incomeTotal?;
    # Candid use only
    @jsondata:Name {value: "investments_us_state_government"}
    decimal investmentsUsStateGovernment?;
    # Adjusted Net Income
    @jsondata:Name {value: "adjusted_net_income"}
    decimal adjustedNetIncome?;
    # Investments—U.S. and state government obligations
    @jsondata:Name {value: "investments_us_state_govt"}
    decimal investmentsUsStateGovt?;
    # Interest expenses
    @jsondata:Name {value: "expense_interest"}
    decimal expenseInterest?;
};

@deprecated
public type FundingSource record {
    # DEPRECATED
    @jsondata:Name {value: "funding_source"}
    string fundingSource?;
    # DEPRECATED
    @jsondata:Name {value: "funding_amount"}
    string fundingAmount?;
};

# Standard Industrial Classification (SIC) information
public type SICCode record {
    # SIC code
    @jsondata:Name {value: "sic_code"}
    string sicCode?;
    # SIC code description
    @jsondata:Name {value: "sic_description"}
    string sicDescription?;
};

public type Person record {
    # DEPRECATED
    # 
    # # Deprecated
    @deprecated
    string benefits?;
    # Salary from other related organizations
    @jsondata:Name {value: "related_compensation"}
    decimal relatedCompensation?;
    # Hours spent on their position
    string hours?;
    # The board member's first and last name
    string name?;
    # Benefits provided by the organization
    @jsondata:Name {value: "other_compensation"}
    decimal otherCompensation?;
    # The salary for the staff member's position
    decimal compensation?;
    # The board member's title
    string title?;
    string[] 'type?;
};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
public type ApiKeysConfig record {|
    string subscriptionKey;
|};

# North American Industry Classification System (NAICS) information
public type NAICSCode record {
    # NAICS code description
    @jsondata:Name {value: "naics_description"}
    string naicsDescription?;
    # NAICS code
    @jsondata:Name {value: "naics_code"}
    string naicsCode?;
};

# IRS letter of dissolution information
public type LetterOfDissolution record {
    # Year of dissolution
    string year?;
    # Document name of the letter of dissolution
    string name?;
    # URL to letter of dissolution
    @jsondata:Name {value: "letter_of_dissolution_url"}
    string letterOfDissolutionUrl?;
};

# The Philanthropy Classification System (PCS) is Candid’s (formerly Foundation Center and GuideStar) taxonomy, describing the work of grantmakers, recipient organizations and the philanthropic transactions between those entities. Candid’s Classification System is based on the National Taxonomy of Exempt Entities (NTEE) and has been expanded over the last three decades to include the emerging work we have evidenced while capturing and indexing the work of the sector on a global scale
public type PCS record {
    # PCS facet name
    @jsondata:Name {value: "pcs_facet"}
    string pcsFacet?;
    # PCS parent code
    @jsondata:Name {value: "pcs_parent_code"}
    string pcsParentCode?;
    # PCS code description
    @jsondata:Name {value: "pcs_description"}
    string pcsDescription?;
    # PCS code
    @jsondata:Name {value: "pcs_code"}
    string pcsCode?;
    # PCS parent code description
    @jsondata:Name {value: "pcs_parent_description"}
    string pcsParentDescription?;
};

# full cost components section of financial trends analysis
public type FullCostComponents record {
    # estimated total full costs
    @jsondata:Name {value: "total_full_costs_estimated"}
    int totalFullCostsEstimated?;
    # one month of savings
    @jsondata:Name {value: "one_month_of_savings"}
    int oneMonthOfSavings?;
    # total expenses after depreciation
    @jsondata:Name {value: "total_expenses_after_depreciation"}
    int totalExpensesAfterDepreciation?;
    # Fixed asset additions
    @jsondata:Name {value: "fixed_asset_additions"}
    int fixedAssetAdditions?;
    # Debt principal payment
    @jsondata:Name {value: "debt_principal_payment"}
    int debtPrincipalPayment?;
};

public type MetricYear record {
    # The year for the metric
    int:Signed32 year?;
    # The value for the metric
    decimal value?;
};

# profitability section of financial trends analysis
public type Profitability record {
    # surplus as a percent of expenses before depreciation
    @jsondata:Name {value: "surplus_as_percent_of_expenses_before_depreciation"}
    string surplusAsPercentOfExpensesBeforeDepreciation?;
    # surplus as a percent of expenses after depreciation
    @jsondata:Name {value: "surplus_as_percent_of_expenses_after_depreciation"}
    string surplusAsPercentOfExpensesAfterDepreciation?;
    # unrestricted surplus or deficit before depreciation
    @jsondata:Name {value: "Unrestricted_surplus_(deficit)_before_depreciation"}
    int unrestrictedSurplusDeficitBeforeDepreciation?;
    # unrestricted surplus or deficit after depreciation
    @jsondata:Name {value: "Unrestricted_surplus_(deficit)_after_depreciation"}
    int unrestrictedSurplusDeficitAfterDepreciation?;
};

# Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized
public type CurrentFinancial record {
    # Total expenses, in USD
    @jsondata:Name {value: "expenses_total"}
    decimal expensesTotal?;
    # Admin operating expenses, in USD
    @jsondata:Name {value: "expense_operating_admin"}
    decimal expenseOperatingAdmin?;
    # Contributions revenue, i.e. donations, in USD
    @jsondata:Name {value: "revenue_contributions"}
    decimal revenueContributions?;
    # Other revenue, in USD
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # Disbursement expenses, in USD
    @jsondata:Name {value: "total_expense_disbursements"}
    decimal totalExpenseDisbursements?;
    # Cash and equivalent assets, in USD
    @jsondata:Name {value: "cash_and_equivalent_assets"}
    decimal cashAndEquivalentAssets?;
    # Investments revenue, in USD
    @jsondata:Name {value: "revenue_investments"}
    decimal revenueInvestments?;
    # Unrestricted net asset, in USD
    @jsondata:Name {value: "unrestricted_net_assets"}
    decimal unrestrictedNetAssets?;
    # The IRS 990 form type the data in this CurrentFinancial object is based off of
    @jsondata:Name {value: "form_type"}
    string formType?;
    # Fundraising expenses, in USD
    @jsondata:Name {value: "expense_fundraising"}
    decimal expenseFundraising?;
    # Government grants revenue, in USD
    @jsondata:Name {value: "revenue_govt_grants"}
    decimal revenueGovtGrants?;
    # Land, buildings and equipment fixed assets, in USD
    @jsondata:Name {value: "net_fixed_assets_LBE"}
    decimal netFixedAssetsLBE?;
    # Start date of the FY that this current financial object covers
    @jsondata:Name {value: "period_begin"}
    string periodBegin?;
    # Advertising expenses, in USD
    @jsondata:Name {value: "expense_advertising_promotion"}
    decimal expenseAdvertisingPromotion?;
    # U.S. bond investment gain/loss, in USD
    @jsondata:Name {value: "investments_us_government"}
    decimal investmentsUsGovernment?;
    # Other assets end of year value, in USD
    @jsondata:Name {value: "other_assets"}
    decimal otherAssets?;
    # Bond investments gain/loss, in USD
    @jsondata:Name {value: "investments_bonds"}
    decimal investmentsBonds?;
    # The FY as a number
    @jsondata:Name {value: "fiscal_year"}
    int:Signed32 fiscalYear?;
    # Land, buildings, equipment end of year value, in USD
    @jsondata:Name {value: "land_buildings_equipment"}
    decimal landBuildingsEquipment?;
    # Accounting expenses, in USD
    @jsondata:Name {value: "expense_accounting"}
    decimal expenseAccounting?;
    # Professional fees expenses, in USD
    @jsondata:Name {value: "expense_professional_fees"}
    decimal expenseProfessionalFees?;
    # Gifts and grants paid expenses, in USD
    @jsondata:Name {value: "expense_gifts_grants_paid"}
    decimal expenseGiftsGrantsPaid?;
    # IT expenses, in USD
    @jsondata:Name {value: "expense_info_technology"}
    decimal expenseInfoTechnology?;
    # Insurance expenses, in USD
    @jsondata:Name {value: "expense_insurance"}
    decimal expenseInsurance?;
    # Stock investment gain/loss, in USD
    @jsondata:Name {value: "investments_stock"}
    decimal investmentsStock?;
    # Special events revenue, in USD
    @jsondata:Name {value: "revenue_special_events"}
    decimal revenueSpecialEvents?;
    # Total monetary value of liabilities, in USD
    @jsondata:Name {value: "total_liabilities"}
    decimal totalLiabilities?;
    # Investment management expenses, in USD
    @jsondata:Name {value: "expense_investment_management"}
    decimal expenseInvestmentManagement?;
    # Salary and other employee benefit expense, in USD
    @jsondata:Name {value: "expense_salaries_employee_benefits"}
    decimal expenseSalariesEmployeeBenefits?;
    # Publication expenses, in USD
    @jsondata:Name {value: "expense_publications"}
    decimal expensePublications?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months
    @jsondata:Name {value: "months_of_cash"}
    string monthsOfCash?;
    # Other investments gain/loss, in USD
    @jsondata:Name {value: "investments_other"}
    decimal investmentsOther?;
    # Source of current financial information
    @jsondata:Name {value: "data_source"}
    string dataSource?;
    # Administration expenses, in USD
    @jsondata:Name {value: "expense_administration"}
    decimal expenseAdministration?;
    # Program services expenses, in USD
    @jsondata:Name {value: "expense_program_services"}
    decimal expenseProgramServices?;
    # End date of the fiscal year that this current financial object covers
    @jsondata:Name {value: "period_end"}
    string periodEnd?;
    # Sales revenue, in USD
    @jsondata:Name {value: "revenue_sales"}
    decimal revenueSales?;
    # Professional fundraising expenses, in USD
    @jsondata:Name {value: "expense_professional_fundraising"}
    decimal expenseProfessionalFundraising?;
    # Net gain/loos this FY, in USD
    @jsondata:Name {value: "net_gain_loss"}
    decimal netGainLoss?;
    # Legal expenses, in USD
    @jsondata:Name {value: "expense_legal"}
    decimal expenseLegal?;
    # Total revenue,, in USD
    @jsondata:Name {value: "total_revenue"}
    decimal totalRevenue?;
    # Program services revenue, in USD
    @jsondata:Name {value: "revenue_program_services"}
    decimal revenueProgramServices?;
    # Total monetary amount of assets, in USD
    @jsondata:Name {value: "assets_total"}
    decimal assetsTotal?;
    # Interest expenses, in USD
    @jsondata:Name {value: "expense_interest"}
    decimal expenseInterest?;
    # Pension plan expenses, in USD
    @jsondata:Name {value: "expense_pension_plan"}
    decimal expensePensionPlan?;
    # mortgages and notes payable to unrelated 3rd parties, in USD
    @jsondata:Name {value: "notes_payable_mortgages"}
    decimal notesPayableMortgages?;
};

# External evaluations support your organization's progress or results
public type PlatinumEvaluationDocument record {
    # Name of evaluation document
    @jsondata:Name {value: "document_name"}
    string documentName?;
    # Year of evaluation document
    @jsondata:Name {value: "document_year"}
    string documentYear?;
    # URL of evaluation document
    @jsondata:Name {value: "document_url"}
    string documentUrl?;
    # DEPRECATED
    # 
    # # Deprecated
    @jsondata:Name {value: "document_type"}
    @deprecated
    string documentType?;
};

public type AnnualReport record {
    # The document's name
    @jsondata:Name {value: "doc_name"}
    string docName?;
    # DEPRECATED
    # 
    # # Deprecated
    @deprecated
    string contents?;
    # The year the document is from
    string year?;
    # The url for the document
    string url?;
};

public type DEI2Demographics record {
    @jsondata:Name {value: "staff_level_totals"}
    StaffLevelTotals staffLevelTotals?;
    @jsondata:Name {value: "equity_strategies"}
    EquityStrategy equityStrategies?;
    DEI2Category[] categories?;
};

# Organization Charity Check information
public type CharityCheck record {
    # If the organization appears in the Business Master File
    @jsondata:Name {value: "bmf_status"}
    string bmfStatus?;
    # Indicates whether the Business Master File and Publication 78 data are reporting the organization differently regarding its classification as a private foundation. 
    @jsondata:Name {value: "irs_bmf_pub78_conflict"}
    string irsBmfPub78Conflict?;
    # Date of the most recent Internal Revenue Bulletin
    @jsondata:Name {value: "most_recent_irb"}
    string mostRecentIrb?;
    # Non-private foundation status. 
    @jsondata:Name {value: "foundation_509a_status"}
    string foundation509aStatus?;
    # State of the organization as it appears in the Publication 78 data
    @jsondata:Name {value: "pub78_state"}
    string pub78State?;
    # Subsection code description as it relates to the subsection code that appears in Business Master File. This code identifies the type of tax-exempt organization. This is often used to determine if contributions to them are tax deductible
    @jsondata:Name {value: "subsection_description"}
    string subsectionDescription?;
    # Indicates whether this organization has been listed by OFAC on the Specially Designated National (SDN) List. Also known as the “Terrorist Watch List”. 
    @jsondata:Name {value: "ofac_status"}
    string ofacStatus?;
    # State (Full Name) of the organization's address
    @jsondata:Name {value: "state_name"}
    string stateName?;
    # This is a 4-digit IRS-internal number assigned to parent organizations holding group exemption letters. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization
    @jsondata:Name {value: "group_exemption"}
    string groupExemption?;
    # This is the month on a ruling or determination letter recognizing the organization's exempt status
    @jsondata:Name {value: "ruling_month"}
    string rulingMonth?;
    # Effective date of the IRB
    @jsondata:Name {value: "effective_date"}
    string effectiveDate?;
    # Date of revocation
    @jsondata:Name {value: "revocation_date"}
    string revocationDate?;
    # State (Abbreviation) of the organization's address
    string state?;
    # Organizations can select IRS foundation codes to describe their organization type. 
    @jsondata:Name {value: "foundation_type_code"}
    string foundationTypeCode?;
    # Date and time the Charity Check API returned the result. Reported in Greenwich Mean Time (GMT)
    @jsondata:Name {value: "report_date"}
    string reportDate?;
    # Zip code of the organization's address
    string zip?;
    # This indicates the primary return(s) the organization is required to file
    @jsondata:Name {value: "filing_req_code"}
    string filingReqCode?;
    # URL link to the IRB
    @jsondata:Name {value: "bulletin_url"}
    string bulletinUrl?;
    # Indicator for understanding an organization’s Publication 78 data. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization
    @jsondata:Name {value: "pub78_indicator"}
    string pub78Indicator?;
    # This is the year on an advanced ruling recognizing the organization’s exempt status. A section 501(c)(3) organization that has received an advance ruling with an expiration date on or after June 9, 2008, is classified as a publicly supported charity during its first five years. Such an organization and its donors may rely on the organization's advance ruling and the organization no longer needs to file Form 8734 with the IRS. Beginning with the organization's sixth year, it must establish that it met the public support test by showing that it is publicly supported on its Form 990, Return of Organization Exempt From Income Tax. On September 9, 2008, the IRS issued temporary Income Tax Regulations, which eliminated the advance ruling process for a section 501(c)(3) organization. Under the new regulations, a new 501(c)(3) organization will be classified as a publicly supported charity, and not a private foundation, if it can show that it reasonably can be expected to be publicly supported when it applies for tax-exempt status. 
    @jsondata:Name {value: "adv_ruling_year"}
    string advRulingYear?;
    # The public name recognized by the IRS
    @jsondata:Name {value: "organization_name"}
    string organizationName?;
    # Textual description of the foundation code. 
    @jsondata:Name {value: "foundation_code_description"}
    string foundationCodeDescription?;
    # EIN (Employer Identification Number) as it appears in the Publication 78 data. 
    @jsondata:Name {value: "pub78_ein"}
    string pub78Ein?;
    # This is the month on an advanced ruling recognizing the organization’s exempt status. A section 501(c)(3) organization that has received an advance ruling with an expiration date on or after June 9, 2008, is classified as a publicly supported charity during its first five years. Such an organization and its donors may rely on the organization's advance ruling and the organization no longer needs to file Form 8734 with the IRS. Beginning with the organization's sixth year, it must establish that it met the public support test by showing that it is publicly supported on its Form 990, Return of Organization Exempt From Income Tax.On September 9, 2008, the IRS issued temporary Income Tax Regulations, which eliminated the advance ruling process for a section 501(c)(3) organization. Under the new regulations, a new 501(c)(3) organization will be classified as a publicly supported charity, and not a private foundation, if it can show that it reasonably can be expected to be publicly supported when it applies for tax-exempt status
    @jsondata:Name {value: "adv_ruling_month"}
    string advRulingMonth?;
    # A unique number identifying organizations and organizational entities
    @jsondata:Name {value: "organization_id"}
    string organizationId?;
    # A message indicating that although the organization is not on the Pub78, their filing requirement code shows that they are a religious organization and are therefore not required to appear on the Pub78 to establish their status
    @jsondata:Name {value: "pub78_church_message"}
    string pub78ChurchMessage?;
    # Organizations can select IRS foundation codes to describe their organization type
    @jsondata:Name {value: "foundation_code"}
    string foundationCode?;
    # City of the organization's address. 
    string city?;
    # This is the year on a ruling or determination letter recognizing the organization's exempt status
    @jsondata:Name {value: "ruling_year"}
    string rulingYear?;
    # Textual description of the foundation code
    @jsondata:Name {value: "foundation_type_description"}
    string foundationTypeDescription?;
    # Employer Identification Number
    string ein?;
    # Candid Internal Use Only (Removed in Future API Versions). 
    @jsondata:Name {value: "irb_organization_id"}
    string irbOrganizationId?;
    # If the organization was listed in an Internal Revenue Bulletin, the bulletin number is listed here
    @jsondata:Name {value: "bulletin_number"}
    string bulletinNumber?;
    # The date that GuideStar IRB last modification date
    @jsondata:Name {value: "irb_last_modified"}
    string irbLastModified?;
    # Date of reinstatement, if any
    @jsondata:Name {value: "reinstatement_date"}
    string reinstatementDate?;
    @jsondata:Name {value: "parent_organizations"}
    CharityCheckParentOrganizations[] parentOrganizations?;
    # Additional address information
    @jsondata:Name {value: "address_line2"}
    string addressLine2?;
    # Address of the organization
    @jsondata:Name {value: "address_line1"}
    string addressLine1?;
    # Date the organization’s information was last updated
    @jsondata:Name {value: "organization_info_last_modified"}
    string organizationInfoLastModified?;
    # Subsection code as it appears in Business Master File. This code identifies the type of tax-exempt organization. This is often used to determine if contributions to them are tax deductible. 
    @jsondata:Name {value: "bmf_subsection"}
    string bmfSubsection?;
    # Indicates the revocation code provided by the IRS in the Automatic Revocation file
    @jsondata:Name {value: "revocation_code"}
    string revocationCode?;
    @jsondata:Name {value: "organization_types"}
    CharityCheckOrganizationTypes[] organizationTypes?;
    # A message indicating that although the organization is not on the IRS BF, their filing requirement code shows that they are a church or religious organization and are therefore not required to appear on the IRS BMF to establish their status
    @jsondata:Name {value: "bmf_church_message"}
    string bmfChurchMessage?;
    # Date the Charity Check report was last modified
    @jsondata:Name {value: "charity_check_last_modified"}
    string charityCheckLastModified?;
    # Date of the most recent IRS Business Master File
    @jsondata:Name {value: "most_recent_bmf"}
    string mostRecentBmf?;
    # City of the organization as it appears in the Publication 78 data
    @jsondata:Name {value: "pub78_city"}
    string pub78City?;
    # Date of most recent Publication 78
    @jsondata:Name {value: "most_recent_pub78"}
    string mostRecentPub78?;
    # Whether the organization is listed on the most current Publication 78. Also known as the Cumulative List of Organizations, IRS Publication 78 lists all organizations to which charitable contributions are tax deductible. The Publication 78 record for each organization includes the organization's name, its city, and its current tax-exempt status, including what percentage of contributions to it are tax deductible. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization. 
    @jsondata:Name {value: "pub78_verified"}
    string pub78Verified?;
    # EIN (Employer Identification Number) as it appears in the Business Master File
    @jsondata:Name {value: "bmf_ein"}
    string bmfEin?;
    # Organization name as it appears in the Business Master File
    @jsondata:Name {value: "bmf_organization_name"}
    string bmfOrganizationName?;
    # The EO Status Code defines the type of exemption held by the organization
    @jsondata:Name {value: "exempt_status_code"}
    string exemptStatusCode?;
    # Organization name "Also Known As" 
    @jsondata:Name {value: "organization_name_aka"}
    string organizationNameAka?;
    # Organization name as it appears in the Publication 78 data
    @jsondata:Name {value: "pub78_organization_name"}
    string pub78OrganizationName?;
};

# Images uploaded by organization
public type PhotoLink record {
    # URL to image
    @jsondata:Name {value: "picture_url"}
    string pictureUrl?;
    # Image caption
    string caption?;
};

# list of key data checks enumerated below
public type KeyDataChecks record {
    # presence of data check errors
    @jsondata:Name {value: "data_check_errors"}
    boolean dataCheckErrors?;
};

# Demographics, Equity, and Inclusion 2 sub category
public type DEI2SubCategory record {
    # board members in demographic group
    @jsondata:Name {value: "board_members"}
    int:Signed32 boardMembers?;
    # whether or not reported by CEO
    @jsondata:Name {value: "reported_by_ceo"}
    boolean reportedByCeo?;
    # senior staff members in demographic group
    @jsondata:Name {value: "senior_staff"}
    int:Signed32 seniorStaff?;
    # staff members in demographic group
    int:Signed32 staff?;
    # subcategory description
    string subcategory?;
    # whether or not reported by co CEO
    @jsondata:Name {value: "reported_by_coceo"}
    boolean reportedByCoceo?;
};

# list of capital structure indicators enumerated below
public type CapitalStructureIndicators record {
    @jsondata:Name {value: "balance_sheet_composition"}
    BalanceSheetComposition balanceSheetComposition?;
    # liquidity capital structure indicator
    Liquidity liquidity?;
};

# General question and answer pair, used in multiple places
public type Question record {
    # Question text
    string question?;
    # Answer text
    string answer?;
};

public type V2PublicProfile record {
    # Time taken for request to process
    int took?;
    # HTTP response status code
    int code?;
    V2PublicProfileData data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

# balance sheet composition
public type BalanceSheetComposition record {
    # restricted net assets total
    @jsondata:Name {value: "restricted_net_assets"}
    int restrictedNetAssets?;
    # temporarily restricted net assets total
    @jsondata:Name {value: "temporarily_restricted_net_assets"}
    int temporarilyRestrictedNetAssets?;
    # permanently restricted net assets total
    @jsondata:Name {value: "permanently_restricted_net_assets"}
    int permanentlyRestrictedNetAssets?;
    # total net assets
    @jsondata:Name {value: "total_net_assets"}
    int totalNetAssets?;
    # gross land buildings and equipment amount
    @jsondata:Name {value: "gross_land_buildings_and_equipment_lbe"}
    int grossLandBuildingsAndEquipmentLbe?;
    # liabilities as a percent of net assets
    @jsondata:Name {value: "liabilities_as_percent_of_net_assets"}
    string liabilitiesAsPercentOfNetAssets?;
    # total receivables
    int receivables?;
    # unrestrited net assets total
    @jsondata:Name {value: "unrestricted_net_assets"}
    int unrestrictedNetAssets?;
    # total investments
    int investments?;
    # total cash
    int cash?;
    # accumulated depreciation as percent of land and buildings
    @jsondata:Name {value: "accumulated_depreciation_as_percent_of_lbe"}
    string accumulatedDepreciationAsPercentOfLbe?;
};

# list of equity strategy items enumerated below
public type EquityStrategy record {
    # presence of equity policy information
    @jsondata:Name {value: "policy_equity"}
    boolean policyEquity?;
    # equity strategy section's last modified date for the organization
    @jsondata:Name {value: "equity_strategy_last_modified"}
    string equityStrategyLastModified?;
    # presence of demographics information
    @jsondata:Name {value: "data_demographics"}
    boolean dataDemographics?;
    # presence of community policy information
    @jsondata:Name {value: "policy_community"}
    boolean policyCommunity?;
    # presence of data disparities information
    @jsondata:Name {value: "data_disparities"}
    boolean dataDisparities?;
    # presence of evaluation policy information
    @jsondata:Name {value: "policy_evaluation"}
    boolean policyEvaluation?;
    # presence of strategic plan information
    @jsondata:Name {value: "data_strategic_plan"}
    boolean dataStrategicPlan?;
    # presence of satisfaction policy information
    @jsondata:Name {value: "policy_satisfaction"}
    boolean policySatisfaction?;
    # presence of feedback information
    @jsondata:Name {value: "data_feedback"}
    boolean dataFeedback?;
    # presence of programming goals information
    @jsondata:Name {value: "data_programming_goals"}
    boolean dataProgrammingGoals?;
    # presence of compensation information
    @jsondata:Name {value: "data_compensation"}
    boolean dataCompensation?;
    # presence of promotion policy information
    @jsondata:Name {value: "policy_promotion"}
    boolean policyPromotion?;
    # presence of leadership policy information
    @jsondata:Name {value: "policy_leadership"}
    boolean policyLeadership?;
    # presence of root cause information
    @jsondata:Name {value: "data_root_cause"}
    boolean dataRootCause?;
    # presence of policy standards information
    @jsondata:Name {value: "policy_standards"}
    boolean policyStandards?;
};

# Information about an organization's program as entered by the organization
public type Program3 record {
    # Geographic area served by program
    @jsondata:Name {value: "areas_served"}
    string[] areasServed?;
    # Program name
    string name?;
    # Program description
    string description?;
    # First target population that the program is targeting
    @jsondata:Name {value: "target_population"}
    string targetPopulation?;
    # Second target population that the program is targeting
    @jsondata:Name {value: "target_population2"}
    string targetPopulation2?;
    # Program budget in dollars
    string budget?;
};

# Information about an organization's program as entered by the organization
public type Program2 record {
    # Geographic area served by program
    @jsondata:Name {value: "areas_served"}
    string[] areasServed?;
    # Program name
    string name?;
    # Program description
    string description?;
    # First target population that the program is targeting
    @jsondata:Name {value: "target_population"}
    string targetPopulation?;
    # Program budget in dollars
    string budget?;
};

# National taxonomy of exempt Entities (NTEE) code information
public type NteeCode record {
    # NTEE Primary description
    @jsondata:Name {value: "primary_description"}
    string primaryDescription?;
    # NTEE primary code
    @jsondata:Name {value: "primary_code"}
    string primaryCode?;
    # NTEE subcode description
    @jsondata:Name {value: "sub_description"}
    string subDescription?;
    # NTEE subcode
    @jsondata:Name {value: "sub_code"}
    string subCode?;
    # NTEE code
    @jsondata:Name {value: "ntee_code"}
    string nteeCode?;
};

public type V1PublicProfile record {
    # Time taken for request to process
    int took?;
    # HTTP response status code
    int code?;
    V1PublicProfileData data?;
    # Diagnostic message for response status
    string message?;
    # List of errors encountered
    string[] errors?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type DemographicsStaffLevel record {
    # DEPRECATED
    @jsondata:Name {value: "staff_level"}
    string staffLevel?;
    # DEPRECATED
    int:Signed32 count?;
};

# Program metrics entered by the organization
public type PlatinumMetrics1 record {
    # The target populations that the metric supports
    @jsondata:Name {value: "target_population_served"}
    string[] targetPopulationServed?;
    # Metric name
    string metric?;
    # The years this metric was captured and the values for a given year
    MetricYear[] years?;
};

# Demographics and Equity Information Section
public type DEI2Category record {
    # presence of senior staff data collected in category
    @jsondata:Name {value: "senior_staff_not_collected"}
    boolean seniorStaffNotCollected?;
    # category description
    string category?;
    # subcategory descriptions
    DEI2SubCategory[] subcategories?;
    # presence of staff data collected in category
    @jsondata:Name {value: "staff_not_collected"}
    boolean staffNotCollected?;
    # presence of board member data collected in category
    @jsondata:Name {value: "board_members_not_collected"}
    boolean boardMembersNotCollected?;
};

# Specific feedback response questions answered by organization
public type FBResponseText record {
    # Feedback response question text
    @jsondata:Name {value: "question_text"}
    string questionText?;
    # Feedback response answer text
    @jsondata:Name {value: "response_text"}
    string responseText?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type FormerName record {
    # DEPRECATED
    @jsondata:Name {value: "former_name"}
    string formerName?;
    # DEPRECATED
    string year?;
};

@deprecated
public type OrganizationDemographics record {
    # DEPRECATED
    @jsondata:Name {value: "tracks_staffboardvol_retention"}
    boolean tracksStaffboardvolRetention?;
    # DEPRECATED
    @jsondata:Name {value: "has_diversity_manager"}
    boolean hasDiversityManager?;
    # DEPRECATED
    @jsondata:Name {value: "diversity_manager_fulltime"}
    boolean diversityManagerFulltime?;
    @jsondata:Name {value: "equity_strategies"}
    EquityStrategy equityStrategies?;
    # DEPRECATED
    @jsondata:Name {value: "diversity_plan"}
    boolean diversityPlan?;
    # DEPRECATED
    @jsondata:Name {value: "total_senior_staff"}
    int:Signed32 totalSeniorStaff?;
    # DEPRECATED
    @jsondata:Name {value: "supports_diversity_via_other_methods"}
    boolean supportsDiversityViaOtherMethods?;
    # DEPRECATED
    @jsondata:Name {value: "has_diversity_committee"}
    boolean hasDiversityCommittee?;
    # DEPRECATED
    @jsondata:Name {value: "total_staff"}
    int:Signed32 totalStaff?;
    # DEPRECATED
    @jsondata:Name {value: "total_board_members"}
    int:Signed32 totalBoardMembers?;
    # DEPRECATED
    @jsondata:Name {value: "tracks_vendor_diversity"}
    boolean tracksVendorDiversity?;
    # DEPRECATED
    @jsondata:Name {value: "tracks_staffboard_income"}
    boolean tracksStaffboardIncome?;
    # DEPRECATED
    @jsondata:Name {value: "tracks_staffboard_age"}
    boolean tracksStaffboardAge?;
    # DEPRECATED
    # 
    # # Deprecated
    @deprecated
    DemographicsCategory[] categories?;
    # DEPRECATED
    @jsondata:Name {value: "total_fulltime_staff"}
    int:Signed32 totalFulltimeStaff?;
    # DEPRECATED
    @jsondata:Name {value: "total_parttime_staff"}
    int:Signed32 totalParttimeStaff?;
};

# IRS Form 990 EZ Financials Part I, Revenue, Expenses, and Changes in Net Assets or Fund Balances
public type EZFinancialsPartI record {
    # gross gaming revenue
    @jsondata:Name {value: "gross_gaming"}
    decimal grossGaming?;
    # total expenses from other sources
    @jsondata:Name {value: "other_expenses_total"}
    decimal otherExpensesTotal?;
    # revenue from other sources
    @jsondata:Name {value: "revenue_other"}
    decimal revenueOther?;
    # gross revenue from sales
    @jsondata:Name {value: "gross_sales"}
    decimal grossSales?;
    # gross profit
    @jsondata:Name {value: "gross_profit"}
    decimal grossProfit?;
    # service revenue
    @jsondata:Name {value: "service_revenue"}
    decimal serviceRevenue?;
    # total revenue
    @jsondata:Name {value: "revenue_total"}
    decimal revenueTotal?;
    # net special revenue
    @jsondata:Name {value: "net_special"}
    decimal netSpecial?;
    # total compensation expenses
    @jsondata:Name {value: "compensation_total"}
    decimal compensationTotal?;
    # total fundraising expenses
    @jsondata:Name {value: "fundraising_total"}
    decimal fundraisingTotal?;
    # revenue from membership dues
    @jsondata:Name {value: "membership_dues"}
    decimal membershipDues?;
    # revenue from income investments
    @jsondata:Name {value: "income_investments"}
    decimal incomeInvestments?;
    # Gain or loss on sale of assets-other
    @jsondata:Name {value: "gain_other"}
    decimal gainOther?;
    # total benefits paid
    @jsondata:Name {value: "benefits_total"}
    decimal benefitsTotal?;
    # Less cost of sales of assets- other
    @jsondata:Name {value: "cost_other"}
    decimal costOther?;
    # total contributions
    @jsondata:Name {value: "contributions_total"}
    decimal contributionsTotal?;
    # total grants paid
    @jsondata:Name {value: "grants_total"}
    decimal grantsTotal?;
    # end of year net assets
    @jsondata:Name {value: "net_assets_eoy"}
    decimal netAssetsEoy?;
    # total printing expenses
    @jsondata:Name {value: "printing_total"}
    decimal printingTotal?;
    # cost of goods
    @jsondata:Name {value: "cost_goods"}
    decimal costGoods?;
    # total functional expenses
    @jsondata:Name {value: "functional_expenses_total"}
    decimal functionalExpensesTotal?;
    # excess (or deficit) for the year
    @jsondata:Name {value: "year_excess"}
    decimal yearExcess?;
    # gross special revenue
    @jsondata:Name {value: "gross_special"}
    decimal grossSpecial?;
    # direct expenses
    @jsondata:Name {value: "direct_expenses"}
    decimal directExpenses?;
    # beginning of year net assets
    @jsondata:Name {value: "net_assets_boy"}
    decimal netAssetsBoy?;
    # gross revenue from other sources
    @jsondata:Name {value: "gross_other"}
    decimal grossOther?;
    # total expenses from occupancy, rent, utilities, and maintenance
    @jsondata:Name {value: "occupancy_total"}
    decimal occupancyTotal?;
    # changes in assets
    @jsondata:Name {value: "assets_change"}
    decimal assetsChange?;
    # gross fundraising revenue
    @jsondata:Name {value: "gross_fundraising"}
    decimal grossFundraising?;
};

# list of business model indicators enumerated below
public type BusinessModelIndicators record {
    # profitability section of financial trends analysis
    Profitability profitability?;
    @jsondata:Name {value: "full_cost_components"}
    FullCostComponents fullCostComponents?;
    @jsondata:Name {value: "expense_composition"}
    ExpenseComposition expenseComposition?;
    @jsondata:Name {value: "revenue_composition"}
    RevenueComposition revenueComposition?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type Award record {
    # DEPRECATED
    @jsondata:Name {value: "award_name"}
    string awardName?;
    # DEPRECATED
    @jsondata:Name {value: "awarding_external_org"}
    string awardingExternalOrg?;
    # Year award received
    @jsondata:Name {value: "award_year"}
    string awardYear?;
};

@deprecated
public type SeniorStaff record {
    # DEPRECATED
    string name?;
    # DEPRECATED
    string title?;
    # DEPRECATED
    string experience?;
};

@deprecated
public type FundingNeed record {
    # DEPRECATED
    @jsondata:Name {value: "funding_need"}
    string fundingNeed?;
    # DEPRECATED
    @jsondata:Name {value: "amount_needed"}
    string amountNeeded?;
};

public type V2PublicProfileData record {
    # Information about the non-profit, such as name and address
    Summary2 summary?;
    # Organization financial information
    Financials2 financials?;
    # Organization operations information
    Operations1 operations?;
    # Organization Charity Check information
    CharityCheck charitycheck?;
    # Collection of an organizations programs and program metrics
    Programs2 programs?;
};

public type CharityCheckOrganizationTypes record {
    # Deductibility Status Codes
    @jsondata:Name {value: "deductibility_status_description"}
    string deductibilityStatusDescription?;
    # Type of organization and use of contribution as it appears in the Publication 78
    @jsondata:Name {value: "organization_type"}
    string organizationType?;
    # In general, an individual who itemizes deductions may deduct contributions to most charitable organizations up to 50% of his or her adjusted gross income computed without regard to net operating loss carrybacks. Individuals generally may deduct charitable contributions to other organizations up to 30% of their adjusted gross income (computed without regard to net operating loss carrybacks). These limitations (and organizational status) are indicated
    @jsondata:Name {value: "deductibility_limitation"}
    string deductibilityLimitation?;
};

# Organization financial information
public type Financials2 record {
    @jsondata:Name {value: "funding_needs"}
    @deprecated
    FundingNeed[] fundingNeeds?;
    @jsondata:Name {value: "financial_statements"}
    FinancialStatement[] financialStatements?;
    @jsondata:Name {value: "f990ez_financials"}
    FinancialF990EZ[] f990ezFinancials?;
    @jsondata:Name {value: "most_recent_year_financials"}
    CurrentFinancial mostRecentYearFinancials?;
    @jsondata:Name {value: "accounting_ratios"}
    Ratios[] accountingRatios?;
    @jsondata:Name {value: "pf990_financials"}
    Financial990PF[] pf990Financials?;
    @jsondata:Name {value: "forms_990T"}
    Form990T[] forms990T?;
    @jsondata:Name {value: "f990_financials"}
    FinancialF9902[] f990Financials?;
    @jsondata:Name {value: "financial_documents"}
    FinDoc[] financialDocuments?;
    @jsondata:Name {value: "funding_sources"}
    @deprecated
    FundingSource[] fundingSources?;
    @jsondata:Name {value: "annual_reports"}
    AnnualReport[] annualReports?;
    @jsondata:Name {value: "financial_trends_analysis"}
    FinancialTrends[] financialTrendsAnalysis?;
};

# Organization financial information
public type Financials3 record {
    @jsondata:Name {value: "funding_needs"}
    @deprecated
    FundingNeed[] fundingNeeds?;
    @jsondata:Name {value: "financial_statements"}
    FinancialStatement[] financialStatements?;
    @jsondata:Name {value: "f990ez_financials"}
    FinancialF990EZ[] f990ezFinancials?;
    @jsondata:Name {value: "most_recent_year_financials"}
    CurrentFinancial mostRecentYearFinancials?;
    @jsondata:Name {value: "accounting_ratios"}
    Ratios[] accountingRatios?;
    @jsondata:Name {value: "pf990_financials"}
    Financial990PF[] pf990Financials?;
    @jsondata:Name {value: "forms_990T"}
    Form990T[] forms990T?;
    @jsondata:Name {value: "f990_financials"}
    FinancialF9903[] f990Financials?;
    @jsondata:Name {value: "financial_documents"}
    FinDoc[] financialDocuments?;
    @jsondata:Name {value: "funding_sources"}
    @deprecated
    FundingSource[] fundingSources?;
    @jsondata:Name {value: "annual_reports"}
    AnnualReport[] annualReports?;
    @jsondata:Name {value: "financial_trends_analysis"}
    FinancialTrends[] financialTrendsAnalysis?;
};

# IRS Form 990 EZ Financials Part II, Balance Sheet
public type EZFinancialsPartII record {
    # beginning of year total liability
    @jsondata:Name {value: "liability_total_boy"}
    decimal liabilityTotalBoy?;
    # end of year net total
    @jsondata:Name {value: "net_total_eoy"}
    decimal netTotalEoy?;
    # beginning of year cash
    @jsondata:Name {value: "cash_boy"}
    decimal cashBoy?;
    # beginning of year total assets
    @jsondata:Name {value: "assets_total_boy"}
    decimal assetsTotalBoy?;
    # end of year cash
    @jsondata:Name {value: "cash_eoy"}
    decimal cashEoy?;
    # end of year land and buildings
    @jsondata:Name {value: "lbe_eoy"}
    decimal lbeEoy?;
    # end of year total assets
    @jsondata:Name {value: "assets_total_eoy"}
    decimal assetsTotalEoy?;
    # end of year other assets
    @jsondata:Name {value: "assets_other_eoy"}
    decimal assetsOtherEoy?;
    # beginning of year land and buildings
    @jsondata:Name {value: "lbe_boy"}
    decimal lbeBoy?;
    # beginning of year net total
    @jsondata:Name {value: "net_total_boy"}
    decimal netTotalBoy?;
    # beginning of year other assets
    @jsondata:Name {value: "assets_other_boy"}
    decimal assetsOtherBoy?;
    # end of year total liability
    @jsondata:Name {value: "liability_total_eoy"}
    decimal liabilityTotalEoy?;
};
