# Low-Level Design: Securities Transformation Service

## 1. Document Information

| **Attribute** | **Details** |
|--------------|-------------|
| **Document Title** | Securities Transformation Service - Low-Level Design |
| **Version** | 1.0 |
| **Date** | 2025-10-07 |
| **Author** | [Your Name] |
| **Status** | Draft |

---

## 2. Executive Summary

This document provides the low-level design for the **Securities Transformation Service**, which acts as an intermediary layer between modern REST API clients and legacy XML-based securities services. The service transforms JSON requests into XML format for backend systems and converts XML responses back to JSON for API consumers.

### 2.1 Purpose
- Modernize securities service interfaces by exposing RESTful APIs
- Maintain backward compatibility with existing XML-based backend services
- Provide seamless bidirectional transformation between JSON and XML formats

### 2.2 Scope
The service covers 10 security types across 2 API domains:
- **Mortgage Securities**: Life Policy, Debenture, Solicitor Undertaking, Letter of Guarantee, Mortgage Over Property
- **Financial Securities**: Counter Indemnity, Letter of Pledge, Letter of Lien

---

## 3. Architecture Overview

### 3.1 High-Level Component Diagram

```
┌─────────────────┐
│   API Clients   │
│  (JSON/REST)    │
└────────┬────────┘
         │
         ▼
┌─────────────────────────────────────────┐
│   Securities Transformation Service      │
│  ┌────────────────────────────────────┐ │
│  │  REST Controllers                   │ │
│  │  - Mortgage Controller              │ │
│  │  - Financials Controller            │ │
│  └──────────────┬─────────────────────┘ │
│                 │                         │
│  ┌──────────────▼─────────────────────┐ │
│  │  Request Validators                 │ │
│  │  - Schema Validation                │ │
│  │  - Business Rules Validation        │ │
│  └──────────────┬─────────────────────┘ │
│                 │                         │
│  ┌──────────────▼─────────────────────┐ │
│  │  Transformation Layer               │ │
│  │  ┌────────────┐  ┌───────────────┐ │ │
│  │  │JSON to XML │  │ XML to JSON   │ │ │
│  │  │Transformers│  │ Transformers  │ │ │
│  │  └────────────┘  └───────────────┘ │ │
│  └──────────────┬─────────────────────┘ │
│                 │                         │
│  ┌──────────────▼─────────────────────┐ │
│  │  Backend Integration Layer          │ │
│  │  - XML Service Client               │ │
│  │  - Connection Pool Management       │ │
│  └─────────────────────────────────────┘ │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Legacy XML Services        │
│  - SecuritiesService003-042 │
└─────────────────────────────┘
```

### 3.2 Request Flow

```
1. Client → REST API (JSON)
2. REST Controller → Request Validator
3. Request Validator → JSON-to-XML Transformer
4. Transformer → Backend Integration Layer
5. Backend → Legacy XML Service
6. Legacy Service → XML Response
7. XML-to-JSON Transformer → JSON Response
8. REST Controller → Client (JSON)
```

---

## 4. Component Design

### 4.1 REST Controllers

#### 4.1.1 MortgageSecuritiesController

**Responsibilities:**
- Handle HTTP requests for mortgage-related securities
- Route requests to appropriate transformers
- Return standardized responses

**Endpoints:**

| **Endpoint** | **Method** | **Request Body** | **Response** | **Service** |
|-------------|-----------|-----------------|-------------|-------------|
| `/{region}/v1/securities-mortgage/life-policy` | POST | LifePolicyRequest | SecurityResponse | Service004 |
| `/{region}/v1/securities-mortgage/life-policy` | PUT | LifePolicyRequest | SecurityResponse | Service004 |
| `/{region}/v1/securities-mortgage/debenture` | POST | DebentureRequest | SecurityResponse | Service033 |
| `/{region}/v1/securities-mortgage/debenture` | PUT | DebentureRequest | SecurityResponse | Service033 |
| `/{region}/v1/securities-mortgage/solicitor-undertaking` | POST | SolicitorUndertakingRequest | SecurityResponse | Service005 |
| `/{region}/v1/securities-mortgage/solicitor-undertaking` | PUT | SolicitorUndertakingRequest | SecurityResponse | Service005 |
| `/{region}/v1/securities-mortgage/letter-of-guarantee` | POST | LetterOfGuaranteeRequest | SecurityResponse | Service003 |
| `/{region}/v1/securities-mortgage/letter-of-guarantee` | PUT | LetterOfGuaranteeRequest | SecurityResponse | Service003 |
| `/{region}/v1/securities-mortgage/mortgage-over-property` | POST | MortgageOverPropertyRequest | SecurityResponse | Service034 |
| `/{region}/v1/securities-mortgage/mortgage-over-property` | PUT | MortgageOverPropertyRequest | SecurityResponse | Service034 |

**Pseudocode:**
```java
@RestController
@RequestMapping("/{region}/v1/securities-mortgage")
public class MortgageSecuritiesController {

    @Autowired
    private RequestValidator validator;

    @Autowired
    private TransformationService transformationService;

    @Autowired
    private BackendIntegrationService backendService;

    @PostMapping("/life-policy")
    public ResponseEntity<SecurityResponse> createLifePolicy(
            @PathVariable String region,
            @RequestHeader("Authorization") String authToken,
            @RequestBody LifePolicyRequest request) {

        // 1. Validate request
        validator.validate(request);

        // 2. Transform JSON to XML
        String xmlRequest = transformationService.transformLifePolicyToXml(
            request, region, "C", authToken
        );

        // 3. Call backend service
        String xmlResponse = backendService.callService("SecuritiesService004", xmlRequest);

        // 4. Transform XML response to JSON
        SecurityResponse response = transformationService.transformXmlToSecurityResponse(
            xmlResponse
        );

        // 5. Return response
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @PutMapping("/life-policy")
    public ResponseEntity<SecurityResponse> updateLifePolicy(
            @PathVariable String region,
            @RequestHeader("Authorization") String authToken,
            @RequestBody LifePolicyRequest request) {

        validator.validate(request);

        String xmlRequest = transformationService.transformLifePolicyToXml(
            request, region, "U", authToken
        );

        String xmlResponse = backendService.callService("SecuritiesService004", xmlRequest);

        SecurityResponse response = transformationService.transformXmlToSecurityResponse(
            xmlResponse
        );

        return ResponseEntity.status(HttpStatus.NO_CONTENT).body(response);
    }

    // Similar methods for other endpoints...
}
```

#### 4.1.2 FinancialSecuritiesController

**Endpoints:**

| **Endpoint** | **Method** | **Request Body** | **Response** | **Service** |
|-------------|-----------|-----------------|-------------|-------------|
| `/{region}/v1/securities-financials/counter-indemnity` | POST | CounterIndemnityRequest | SecurityResponse | Service006 |
| `/{region}/v1/securities-financials/counter-indemnity` | PUT | CounterIndemnityRequest | SecurityResponse | Service006 |
| `/{region}/v1/securities-financials/letter-of-pledge` | POST | LetterOfPledgeRequest | SecurityResponse | Service042 |
| `/{region}/v1/securities-financials/letter-of-pledge` | PUT | LetterOfPledgeRequest | SecurityResponse | Service042 |
| `/{region}/v1/securities-financials/letter-of-lien` | POST | LetterOfLienRequest | SecurityResponse | Service007 |
| `/{region}/v1/securities-financials/letter-of-lien` | PUT | LetterOfLienRequest | SecurityResponse | Service007 |

---

### 4.2 Request Validator

**Responsibilities:**
- Validate incoming JSON requests against schema
- Validate business rules (mandatory fields, data ranges, enum values)
- Return meaningful validation errors

**Validation Rules:**

| **Field** | **Validation** |
|-----------|---------------|
| `region` | Must be valid region code (ROI, UK, etc.) |
| `currentStatus` | Must be one of: APFH, APPR, APRE, EXIO, EXNA, EXSR, HEEX, IDRU, NENF, OTAD, OTCU, OTLA, TKAP, RELE |
| `securityType` | Must match the endpoint security type |
| `slaCode` | Must be one of: A0, H0, L0, N0, S0 |
| `currencyType` | Must be 3-character ISO code |
| `dates` | Must be valid date format (yyyy-MM-dd) |
| `itemNumber` | Required for UPDATE operations |

**Pseudocode:**
```java
@Component
public class RequestValidator {

    public void validate(Object request) throws ValidationException {
        // Schema validation
        validateSchema(request);

        // Business rules validation
        validateBusinessRules(request);
    }

    private void validateSchema(Object request) {
        // Use JSON schema validator
        // Validate against OpenAPI specification
    }

    private void validateBusinessRules(Object request) {
        if (request instanceof LifePolicyRequest) {
            validateLifePolicy((LifePolicyRequest) request);
        } else if (request instanceof DebentureRequest) {
            validateDebenture((DebentureRequest) request);
        }
        // ... other types
    }

    private void validateLifePolicy(LifePolicyRequest request) {
        // Validate specific business rules for Life Policy
        if (request.getSecurityItem().getSecurityType() != "LIFE POL") {
            throw new ValidationException("Invalid security type");
        }
        // ... more validations
    }
}
```

---

### 4.3 Transformation Layer

This is the core component responsible for bidirectional transformation between JSON and XML formats.

#### 4.3.1 JSON to XML Transformation

**Common XML Structure:**
```xml
<channel_log_entry timestamp="{current_timestamp}">
    <Request>
        <Log>N</Log>
        <ID>
            <version>1.0</version>
            <AppID>NBP</AppID>
            <AppName>SysTest_CAS_ROI_Current</AppName>
            <UsrID>{extracted_from_token}</UsrID>
            <UnqID>{extracted_from_token}</UnqID>
        </ID>
        <regionCode>{region}</regionCode>
        <sourceNSC>{from_context}</sourceNSC>
        <staffNumber>{from_token}</staffNumber>
        <deviceId></deviceId>
        <Transaction>{ServiceName}</Transaction>
        <TransactionVersion>1</TransactionVersion>
        <{ServiceName}>
            <servType500>{C|U}</servType500>
            <source500>NAPS</source500>
            <!-- Service-specific fields -->
        </{ServiceName}>
    </Request>
</channel_log_entry>
```

**Transformation Strategy:**

1. **Header Mapping** (Common for all services)
2. **Service-Specific Field Mapping**
3. **Involvement Group Mapping**
4. **Array/List Transformation**

#### 4.3.2 Transformer Interface

```java
public interface SecurityTransformer<T> {
    String transformToXml(T request, TransformationContext context);
    SecurityResponse transformFromXml(String xmlResponse);
}
```

#### 4.3.3 Life Policy Transformer

**Field Mapping: JSON → XML**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `assignmentOfLife.assignmentDate` | `ASSIGNMENT_DATE` | Date format: dd/MM/yyyy |
| `assignmentOfLife.eventWhenPayble` | `EVENT_WHEN_PAYABLE` | Direct mapping |
| `assignmentOfLife.expiryDate` | `LIFEPOL_EXPIRY_DATE` | Date format: dd/MM/yyyy |
| `assignmentOfLife.securityItemNumber` | `ITEM_NUMBER` | Direct mapping (for UPDATE) |
| `assignmentOfLife.insuranceId` | `ASSURANCE_CO_CODE` | Direct mapping |
| `assignmentOfLife.policyNumber` | `POLICY_NUMBER` | Direct mapping |
| `assignmentOfLife.policyType` | `POLICY_TYPE` | Direct mapping |
| `assignmentOfLife.sumAssured` | `SUM_ASSURED` | Numeric string |
| `securityItem.companyOfficeRegDate` | `CO_OFFICE_REGISTERED_DATE` | Date format: dd/MM/yyyy |
| `securityItem.companyOfficeRegSentDate` | `CO_OFFICE_SENT_FOR_REG_DATE` | Date format: dd/MM/yyyy |
| `securityItem.companyIndicator` | `COMPANY_INDICATOR` | Direct mapping |
| `securityItem.currencyType` | `CURRENCY_TYPE` | Direct mapping |
| `securityItem.currentStatus` | `CURRENT_STATUS` | Direct mapping |
| `securityItem.assuranceCode` | `ASSURANCE_CO_CODE` | Direct mapping |
| `securityItem.homeAppId` | `HOME_APP_ID` | Direct mapping |
| `securityItem.napsAppId` | `NAPS_APP_ID` | Direct mapping |
| `securityItem.solicitorCode` | `SOLICITOR_CODE` | Direct mapping |
| `securityItem.holdingNsc` | `HOLDING_NSC` | Direct mapping |
| `securityItem.itemNumber` | `ITEM_NUMBER` | Direct mapping |
| `securityItem.posNotes` | `POS_NOTES` | Direct mapping |
| `securityItem.securityType` | `SECURITY_TYPE` | Must be "LIFE POL" |
| `securityItem.slaCode` | `SLA_CODE` | Direct mapping |
| `securityItem.soNotes` | `SO_NOTES` | Direct mapping |
| `securityItem.solicitorFileRefNo` | `SOLR_FILE_REF_NO` | Direct mapping |
| `custSecurities[].cifKey` | Mapped to involvement groups | See Involvement Mapping |
| `napsDetails[].napsAppId` | `NAPS_APP_ID` | Direct mapping |
| `accountDetails[].accountNo` | N/A | Not in XML |

**Involvement Groups Mapping:**

The JSON `custSecurities` array contains customers with their involvement roles. This needs to be transformed into multiple XML involvement groups:

```
custSecurities: [
  {
    cifKey: "0100000932437490000",
    securityInvolvement: [
      { involvementRole: "BENEFJOIN", involvementType: "SECUR" }
    ]
  }
]

↓ Transforms to ↓

<BENOWN_INV_GROUP>2</BENOWN_INV_GROUP>
<BenOwnInvGroup>
    <listitem index="0">
        <BENOWN_INV_COMPANY_INDICATOR> </BENOWN_INV_COMPANY_INDICATOR>
        <BENOWN_HELD_ON_CIF_INDICATOR>Y</BENOWN_HELD_ON_CIF_INDICATOR>
        <BENOWN_INVOLVEMENT_TYPE>SECUR</BENOWN_INVOLVEMENT_TYPE>
        <BENOWN_INVOLVEMENT_ROLE>BENEFJOIN </BENOWN_INVOLVEMENT_ROLE>
        <BENOWN_CIF_REF_NUMBER>0100000932437490000</BENOWN_CIF_REF_NUMBER>
        <BENOWN_COMPANY_ID>000000000000000</BENOWN_COMPANY_ID>
    </listitem>
</BenOwnInvGroup>
```

**Involvement Group Types:**

| **Involvement Role** | **XML Group Name** | **Count Field** |
|---------------------|-------------------|-----------------|
| BENEFJOIN | BenOwnInvGroup | BENOWN_INV_GROUP |
| BORROWJOIN | BorrowCustInvGroup | BORROWCUST_INV_GROUP |
| LIFEASSURE | LifeAssureInvGroup | LIFEASSURE_INV_GROUP |
| GUARANTOR | GuarantorInvGroup | GUARANTOR_INV_GROUP |
| SIGNEDSOLE / SIGNEDJOIN | SignedByInvGroup | SIGNEDBY_INV_GROUP |
| Company involvements | CompanyInvGroup | COMPANY_INV_GROUP |

**Pseudocode:**
```java
@Component
public class LifePolicyTransformer implements SecurityTransformer<LifePolicyRequest> {

    @Override
    public String transformToXml(LifePolicyRequest request, TransformationContext context) {
        XMLBuilder xml = new XMLBuilder();

        // Build header
        xml.append(buildCommonHeader(context));

        // Build service-specific section
        xml.startElement("SecuritiesService004");
        xml.addElement("servType500", context.getServType());
        xml.addElement("source500", "NAPS");

        // Map Life Policy specific fields
        xml.addElement("ITEM_NUMBER", request.getSecurityItem().getItemNumber(), 1);
        xml.addElement("SECURITY_TYPE", "LIFE POL", 1);
        xml.addElement("CURRENT_STATUS", request.getSecurityItem().getCurrentStatus(), 1);
        xml.addElement("POLICY_TYPE", request.getAssignmentOfLife().getPolicyType(), 1);
        xml.addElement("POLICY_NUMBER", request.getAssignmentOfLife().getPolicyNumber(), 1);
        xml.addElement("SUM_ASSURED", request.getAssignmentOfLife().getSumAssured(), 1);
        xml.addElement("LIFEPOL_EXPIRY_DATE",
            formatDate(request.getAssignmentOfLife().getExpiryDate()), 1);
        // ... more fields

        // Transform involvement groups
        transformInvolvementGroups(xml, request.getCustSecurities());

        // NAPS details
        xml.addElement("NAPS_GROUP", "0", 1);
        xml.addElement("ApplicationIDList001", "", 1);

        xml.endElement("SecuritiesService004");
        xml.append(buildCommonFooter());

        return xml.toString();
    }

    private void transformInvolvementGroups(XMLBuilder xml, List<CustomerSecurity> customers) {
        Map<String, List<CustomerSecurity>> groupedByRole = groupByInvolvementRole(customers);

        // BenOwn Group
        List<CustomerSecurity> benOwners = groupedByRole.get("BENEFJOIN");
        xml.addElement("BENOWN_INV_GROUP", benOwners.size());
        xml.startElement("BenOwnInvGroup");
        for (int i = 0; i < benOwners.size(); i++) {
            buildInvolvementItem(xml, "BENOWN", benOwners.get(i), i);
        }
        xml.endElement("BenOwnInvGroup");

        // BorrowCust Group
        List<CustomerSecurity> borrowers = groupedByRole.get("BORROWJOIN");
        xml.addElement("BORROWCUST_INV_GROUP", borrowers.size());
        xml.startElement("BorrowCustInvGroup");
        for (int i = 0; i < borrowers.size(); i++) {
            buildInvolvementItem(xml, "BORROWCUST", borrowers.get(i), i);
        }
        xml.endElement("BorrowCustInvGroup");

        // LifeAssure Group
        List<CustomerSecurity> lifeAssured = groupedByRole.get("LIFEASSURE");
        xml.addElement("LIFEASSURE_INV_GROUP", lifeAssured.size());
        xml.startElement("LifeAssureInvGroup");
        for (int i = 0; i < lifeAssured.size(); i++) {
            buildInvolvementItem(xml, "LIFEASSURE", lifeAssured.get(i), i);
        }
        xml.endElement("LifeAssureInvGroup");

        // Other groups...
    }

    private void buildInvolvementItem(XMLBuilder xml, String prefix,
                                      CustomerSecurity customer, int index) {
        xml.startElement("listitem", "index", index);
        xml.addElement(prefix + "_INV_COMPANY_INDICATOR", " ", index);
        xml.addElement(prefix + "_RELATIONSHIP_QUALITY_CODE", " ", index);
        xml.addElement(prefix + "_HELD_ON_CIF_INDICATOR", "Y", index);
        xml.addElement(prefix + "_INVOLVEMENT_TYPE", "SECUR", index);
        xml.addElement(prefix + "_INVOLVEMENT_ROLE",
            customer.getSecurityInvolvement().get(0).getInvolvementRole(), index);
        xml.addElement(prefix + "_CIF_REF_NUMBER", customer.getCifKey(), index);
        xml.addElement(prefix + "_COMPANY_ID", "000000000000000", index);
        xml.endElement("listitem");
    }

    @Override
    public SecurityResponse transformFromXml(String xmlResponse) {
        XMLParser parser = new XMLParser(xmlResponse);

        SecurityResponse response = new SecurityResponse();

        // Extract item number
        String itemNumber = parser.getValue("//Field[@name='A0ITEM_NUMBER_RESP']/Value");
        response.setLedCollateInternaId(itemNumber);

        // Extract involvement numbers
        List<String> involvementNumbers = parser.getValues(
            "//Field[@name='A0INVOLVEMENT_NUMBER']/Value"
        );
        response.setAssetCollateInternaId(involvementNumbers);

        return response;
    }
}
```

#### 4.3.4 Letter of Guarantee Transformer

**Field Mapping: JSON → XML**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `letterOfGuarantee.securityItemNumber` | `ITEM_NUMBER` | Direct mapping |
| `letterOfGuarantee.guaranteeAmount` | `GUARANTEE_AMOUNT` | Numeric |
| `letterOfGuarantee.guaranteeDate` | `GUARANTEE_DATE` | Date format: dd/MM/yyyy |
| `letterOfGuarantee.letterOfWaiverIndicator` | `LETTER_OF_WAIVER_INDICATOR` | Direct mapping |
| `letterOfGuarantee.relationshipType` | `RELATIONSHIP_TYPE` | Direct mapping |
| `letterOfGuarantee.guaranteeType` | `GUARANTEE_TYPE` | Direct mapping |
| `letterOfGuarantee.restrictedDetails.*` | `RESTRICTIONS_*` | Nested object mapping |
| `securityItem.*` | Same as Life Policy | See Life Policy mapping |

**Supporting Securities Mapping:**

```
supportingSecurity: [
  {
    supSecurityItem: 12345,
    bkUpSecurityItem: 67890
  }
]

↓ Transforms to ↓

<SUPPORTING_SECURITIES>1</SUPPORTING_SECURITIES>
<supportingSecurities>
    <listitem index="0">
        <SUP_SECURITY_ITEM>12345</SUP_SECURITY_ITEM>
        <BKUP_SECURITY_ITEM>67890</BKUP_SECURITY_ITEM>
    </listitem>
</supportingSecurities>
```

#### 4.3.5 Debenture Transformer

**Unique Features:**
- Property relations and details
- Multiple property addresses

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `debenture.deedRegistryDate` | `REG_DEEDS_DATE_REG` | Date format: dd/MM/yyyy |
| `debenture.securityDate` | `SECURITY_DATE` | Date format: dd/MM/yyyy |
| `debenture.debentureType` | `DEBENTURE_TYPE` | Direct mapping |
| `debenture.deedOfConfirmation` | `DEED_OF_CONFIRMATION_IND` | Direct mapping |
| `debenture.interLenderRequired` | `INTER_LENDER_REQUIRED_INDICATOR` | Direct mapping |
| `debenture.registryDeedBookNo` | `REG_DEEDS_BOOK_NO` | Direct mapping |
| `debenture.registryDeedPageNo` | `REG_DEEDS_PAGE_NO` | Direct mapping |

**Property Mapping:**

```
propertyDetail: [
  {
    propertyId: "000000068224568",
    propertyAddress1: "122,Test Property",
    propertyAddress2: "Test Road",
    folioDetail: {
      folioNumber: "ABC123",
      county: "DN"
    }
  }
]

↓ Transforms to ↓

<DBNT_PROPERTY_GROUP>1</DBNT_PROPERTY_GROUP>
<DBNTPropertyGroup>
    <listitem index="0">
        <DB_PROPERTY_ID>000000068224568</DB_PROPERTY_ID>
        <DB_PROPERTY_ADDRESS_1>122,Test Property</DB_PROPERTY_ADDRESS_1>
        <DB_PROPERTY_ADDRESS_2>Test Road</DB_PROPERTY_ADDRESS_2>
        <DB_FOLIO_NUMBER>ABC123</DB_FOLIO_NUMBER>
        <DB_FOLIO_COUNTY>DN</DB_FOLIO_COUNTY>
    </listitem>
</DBNTPropertyGroup>
```

#### 4.3.6 Counter Indemnity Transformer

**Unique Features:**
- Bond/Guarantee facility details
- Plan permission information

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `counterIndemnity.indemnityDate` | `INDEMNITY_DATE` | Date format: dd/MM/yyyy |
| `counterIndemnity.indemnityType` | `INDEMNITY_TYPE` | Direct mapping |
| `bondGuaranteeFacility.amount` | `AMOUNT` | Numeric |
| `bondGuaranteeFacility.currency` | `AMOUNT_CURRENCY` | Direct mapping |
| `bondGuaranteeFacility.amountFrequency` | `AMOUNT_FREQUENCY` | Direct mapping |
| `bondGuaranteeFacility.dateOfBond` | `DATE_OF_BOND` | Date format: dd/MM/yyyy |
| `bondGuaranteeFacility.expiryDate` | `INDEMNITY_EXPIRY_DATE` | Date format: dd/MM/yyyy |
| `bondGuaranteeFacility.maximumExposure` | `MAXIMUM_EXPOSURE` | Numeric |
| `bondGuaranteeFacility.planPermissionDate` | `PLAN_PERM_DATE` | Date format: dd/MM/yyyy |
| `bondGuaranteeFacility.planPermissionNumber` | `PLAN_PERM_NO` | Direct mapping |
| `bondGuaranteeFacility.subOfGuarantee` | `VL_SUBJECT_OF_GUARANTEE_BOND` | Direct mapping |
| `bondGuaranteeFacility.bondType` | `TYPE` | Direct mapping |

#### 4.3.7 Letter of Pledge Transformer

**Unique Features:**
- Share details
- Portfolio information

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `letterOfPledge.brokerContact` | `BROKER_CONTACT_NAME` | Direct mapping |
| `letterOfPledge.brokerId` | `BROKER_ID` | Direct mapping |
| `letterOfPledge.dateOfPledge` | `DATE_OF_PLEDGE` | Date format: dd/MM/yyyy |
| `letterOfPledge.pledgeType` | `PLEDGE_TYPE` | Direct mapping |
| `letterOfPledge.portfolioNumber` | `PORTFOLIO_NUMBER` | Direct mapping |

**Share Details Mapping:**

```
shareDetails: [
  {
    shareId: "000000056596334",
    issuer: "xyz",
    noOfShares: 3,
    baseValue: 0,
    currencyType: "EUR",
    registeredIn: "ALIB"
  }
]

↓ Transforms to ↓

<SHARE_GROUP>1</SHARE_GROUP>
<ShareGroup>
    <listitem index="0">
        <SHARE_ID>000000056596334</SHARE_ID>
        <ISSUER>xyz                           </ISSUER>
        <NUMBER_OF_SHARES>000000000000003</NUMBER_OF_SHARES>
        <BASE_VALUE>000000000000000</BASE_VALUE>
        <SHARE_CURRENCY>EUR</SHARE_CURRENCY>
        <REGISTERED_IN>ALIB</REGISTERED_IN>
    </listitem>
</ShareGroup>
```

#### 4.3.8 Letter of Lien Transformer

**Unique Features:**
- Account instruction details
- Deposit location

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `letterOfLien.depositeLocation` | `DEPOSIT_LOCATION` | Direct mapping |
| `letterOfLien.letterDate` | `LIEN_LETTER_DATE` | Date format: dd/MM/yyyy |
| `letterOfLien.letterType` | `LIEN_TYPE` | Direct mapping |
| `accountInstruction.accountNumber` | `ACCOUNT_NUMBER` | Direct mapping |
| `accountInstruction.creditBalanceLimit` | `CREDIT_BALANCE_LIMIT` | Numeric |
| `accountInstruction.nsc` | `NSC` | Direct mapping |

#### 4.3.9 Solicitor Undertaking Transformer

**Unique Features:**
- Property details with undertaking
- Site value and number of sites

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `solicitorUndertaking.shipDetails` | `SHIP_DETAILS` | Direct mapping |
| `solicitorUndertaking.siteValue` | `SITE_VALUE` | Numeric |
| `solicitorUndertaking.transferTo` | `TRANSFER_TO` | Direct mapping |
| `solicitorUndertaking.undertakingDate` | `UNDERTAKING_DATE` | Date format: dd/MM/yyyy |
| `solicitorUndertaking.undertakingDescription` | `UNDERTAKING_DESCRIPTION` | Direct mapping |
| `propertyId` | Maps to UT_PROPERTY_ID | Property relation |

#### 4.3.10 Mortgage Over Property Transformer

**Field Mapping:**

| **JSON Field Path** | **XML Field Path** | **Transformation** |
|---------------------|-------------------|-------------------|
| `propertyDetail[].propertyAddress1-4` | `PROP_PROPERTY_ADDRESS_1-4` | Direct mapping |
| `propertyDetail[].folioDetail.folioNumber` | `PROP_FOLIO_NUMBER` | Direct mapping |
| `propertyDetail[].folioDetail.county` | `PROP_FOLIO_COUNTY` | Direct mapping |
| `propertyDetail[].commercialLeaseIndicator` | `PROP_RESIDENTIAL_INDICATOR` | Direct mapping |

---

### 4.4 Transformation Service

**Core Service Class:**

```java
@Service
public class TransformationService {

    @Autowired
    private Map<String, SecurityTransformer> transformers;

    @Autowired
    private TransformationContextBuilder contextBuilder;

    public String transformToXml(Object request, String serviceName,
                                 String region, String servType, String authToken) {

        // Build context
        TransformationContext context = contextBuilder.build(
            region, servType, authToken, serviceName
        );

        // Get appropriate transformer
        SecurityTransformer transformer = transformers.get(serviceName);

        if (transformer == null) {
            throw new UnsupportedServiceException("No transformer for: " + serviceName);
        }

        // Transform
        return transformer.transformToXml(request, context);
    }

    public SecurityResponse transformFromXml(String xmlResponse) {
        // Parse error node first
        XMLParser parser = new XMLParser(xmlResponse);

        String errorCode = parser.getValue("//errorNode/errorCode");
        if (!"1".equals(errorCode)) {
            String errorMsg = parser.getValue("//errorNode/errorMsg");
            throw new BackendServiceException(errorCode, errorMsg);
        }

        // Extract response fields
        SecurityResponse response = new SecurityResponse();

        String itemNumber = parser.getValue("//Field[@name='A0ITEM_NUMBER_RESP']/Value");
        response.setLedCollateInternaId(itemNumber);

        List<String> involvementNumbers = parser.getValues(
            "//Field[@name='A0INVOLVEMENT_NUMBER']/Value"
        );
        response.setAssetCollateInternaId(involvementNumbers);

        return response;
    }
}
```

**Transformation Context:**

```java
@Data
@Builder
public class TransformationContext {
    private String timestamp;
    private String version;
    private String appId;
    private String appName;
    private String userId;
    private String uniqueId;
    private String regionCode;
    private String sourceNsc;
    private String staffNumber;
    private String deviceId;
    private String transactionName;
    private String transactionVersion;
    private String servType; // C or U
    private String source;   // NAPS
}
```

**Context Builder:**

```java
@Component
public class TransformationContextBuilder {

    @Autowired
    private JwtTokenParser tokenParser;

    public TransformationContext build(String region, String servType,
                                       String authToken, String serviceName) {

        // Parse JWT token
        JwtClaims claims = tokenParser.parse(authToken);

        return TransformationContext.builder()
            .timestamp(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS")))
            .version("1.0")
            .appId("NBP")
            .appName("SysTest_CAS_ROI_Current")
            .userId(claims.getUserId())
            .uniqueId(claims.getUniqueId())
            .regionCode(region)
            .sourceNsc(claims.getNsc())
            .staffNumber(claims.getStaffNumber())
            .deviceId("")
            .transactionName(serviceName)
            .transactionVersion("1")
            .servType(servType)
            .source("NAPS")
            .build();
    }
}
```

---

### 4.5 Backend Integration Layer

**Responsibilities:**
- Manage connections to legacy XML services
- Handle timeouts and retries
- Log requests and responses

**Service Client:**

```java
@Service
public class BackendIntegrationService {

    @Autowired
    private RestTemplate restTemplate;

    @Value("${backend.service.url}")
    private String backendServiceUrl;

    @Value("${backend.service.timeout}")
    private int timeout;

    public String callService(String serviceName, String xmlRequest) {

        // Log request
        log.info("Calling backend service: {} with request: {}", serviceName, xmlRequest);

        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_XML);

            HttpEntity<String> entity = new HttpEntity<>(xmlRequest, headers);

            ResponseEntity<String> response = restTemplate.exchange(
                backendServiceUrl + "/" + serviceName,
                HttpMethod.POST,
                entity,
                String.class
            );

            // Log response
            log.info("Received response from backend: {}", response.getBody());

            return response.getBody();

        } catch (HttpClientErrorException | HttpServerErrorException e) {
            log.error("Backend service error: {}", e.getMessage());
            throw new BackendServiceException("Backend call failed", e);
        } catch (ResourceAccessException e) {
            log.error("Backend service timeout: {}", e.getMessage());
            throw new BackendServiceTimeoutException("Backend service timeout", e);
        }
    }
}
```

**Configuration:**

```java
@Configuration
public class BackendClientConfig {

    @Bean
    public RestTemplate restTemplate() {
        SimpleClientHttpRequestFactory factory = new SimpleClientHttpRequestFactory();
        factory.setConnectTimeout(5000);
        factory.setReadTimeout(30000);

        return new RestTemplate(factory);
    }
}
```

---

## 5. Data Models

### 5.1 Common Models

#### 5.1.1 SecurityItem

```java
@Data
public class SecurityItem {
    private String companyOfficeRegDate;
    private String companyOfficeRegSentDate;
    private String companyIndicator;
    private String currencyType;
    private String currentStatus;
    private String assuranceCode;
    private String homeAppId;
    private String napsAppId;
    private String solicitorCode;
    private String thirdPartyCompany;
    private String holdingNsc;
    private String itemNumber;
    private String posNotes;
    private String securityType;
    private String slaCode;
    private String soNotes;
    private String solicitorFileRefNo;
}
```

#### 5.1.2 CustomerSecurity

```java
@Data
public class CustomerSecurity {
    private String cifKey;
    private String securityItemNumber;
    private List<SecurityInvolvement> securityInvolvement;
}
```

#### 5.1.3 SecurityInvolvement

```java
@Data
public class SecurityInvolvement {
    private String companyId;
    private String propertyId;
    private String shareId;
    private String involvementNumber;
    private String involvementRole;
    private String involvementType;
}
```

#### 5.1.4 SecurityResponse

```java
@Data
public class SecurityResponse {
    private String ledCollateInternaId;
    private List<String> assetCollateInternaId;
}
```

### 5.2 Service-Specific Models

#### 5.2.1 LifePolicyRequest

```java
@Data
public class LifePolicyRequest {
    private AssignmentOfLife assignmentOfLife;
    private SecurityItem securityItem;
    private List<SupportingSecurity> supportingSecurity;
    private List<CustomerSecurity> custSecurities;
    private List<NapsSecurityDetails> napsDetails;
    private List<AccountSecurityDetails> accountDetails;
}
```

#### 5.2.2 AssignmentOfLife

```java
@Data
public class AssignmentOfLife {
    private String assignmentDate;
    private String eventWhenPayble;
    private String expiryDate;
    private String securityItemNumber;
    private String insuranceId;
    private String policyNumber;
    private String policyType;
    private String sumAssured;
}
```

---

## 6. Error Handling

### 6.1 Exception Hierarchy

```
RuntimeException
├── ValidationException
│   ├── SchemaValidationException
│   └── BusinessRuleValidationException
├── TransformationException
│   ├── XmlParsingException
│   └── JsonParsingException
├── BackendServiceException
│   ├── BackendServiceTimeoutException
│   └── BackendServiceUnavailableException
└── AuthenticationException
```

### 6.2 Error Response Format

```json
{
  "timestamp": "2025-10-07T10:30:00.000+00:00",
  "status": 400,
  "error": "Bad Request",
  "message": "Validation failed for field: securityType",
  "path": "/roi/v1/securities-mortgage/life-policy",
  "uuid": "550e8400-e29b-41d4-a716-446655440000",
  "code": "VALIDATION_ERROR",
  "errors": [
    "securityType must be one of: DEBENTURE, GUARANTEE, INDEMNITY, LIEN, LIFE POL, MARINE, MISCELL, PLEDGE, PROPERTY, UNDERTAKE"
  ]
}
```

### 6.3 Global Exception Handler

```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ValidationException.class)
    public ResponseEntity<Error> handleValidationException(ValidationException ex) {
        Error error = Error.builder()
            .timestamp(LocalDateTime.now())
            .status(HttpStatus.BAD_REQUEST.value())
            .error("Bad Request")
            .message(ex.getMessage())
            .uuid(UUID.randomUUID().toString())
            .code("VALIDATION_ERROR")
            .errors(ex.getValidationErrors())
            .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(error);
    }

    @ExceptionHandler(BackendServiceException.class)
    public ResponseEntity<Error> handleBackendServiceException(BackendServiceException ex) {
        Error error = Error.builder()
            .timestamp(LocalDateTime.now())
            .status(HttpStatus.SERVICE_UNAVAILABLE.value())
            .error("Service Unavailable")
            .message("Backend service error: " + ex.getMessage())
            .uuid(UUID.randomUUID().toString())
            .code("BACKEND_SERVICE_ERROR")
            .build();

        return ResponseEntity.status(HttpStatus.SERVICE_UNAVAILABLE).body(error);
    }

    // More exception handlers...
}
```

---

## 7. Logging and Monitoring

### 7.1 Logging Strategy

**Log Levels:**
- **DEBUG**: Detailed transformation mappings
- **INFO**: Request/Response summaries
- **WARN**: Validation warnings, deprecated fields
- **ERROR**: Transformation failures, backend errors

**Log Format:**
```
[{timestamp}] [{level}] [{thread}] [{class}] - [{correlationId}] {message}
```

**Logged Information:**
- Incoming JSON request (sanitized)
- Generated XML request
- Backend XML response
- Transformed JSON response
- Execution time for each step

### 7.2 Correlation ID

All logs within a single request will share a correlation ID for tracking:

```java
@Component
public class CorrelationIdFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                        FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;

        String correlationId = httpRequest.getHeader("X-B3-TraceId");
        if (correlationId == null) {
            correlationId = UUID.randomUUID().toString();
        }

        MDC.put("correlationId", correlationId);

        try {
            chain.doFilter(request, response);
        } finally {
            MDC.remove("correlationId");
        }
    }
}
```

### 7.3 Metrics

**Key Metrics to Track:**
- Request count per endpoint
- Success/failure rate
- Average response time
- Backend service latency
- Transformation time
- Validation failure rate

**Implementation:**
```java
@Aspect
@Component
public class MetricsAspect {

    @Autowired
    private MeterRegistry meterRegistry;

    @Around("@annotation(org.springframework.web.bind.annotation.PostMapping) || " +
            "@annotation(org.springframework.web.bind.annotation.PutMapping)")
    public Object trackMetrics(ProceedingJoinPoint joinPoint) throws Throwable {

        Timer.Sample sample = Timer.start(meterRegistry);
        String endpoint = extractEndpoint(joinPoint);

        try {
            Object result = joinPoint.proceed();

            sample.stop(meterRegistry.timer("api.request.duration",
                "endpoint", endpoint,
                "status", "success"));

            meterRegistry.counter("api.request.count",
                "endpoint", endpoint,
                "status", "success").increment();

            return result;

        } catch (Exception e) {
            sample.stop(meterRegistry.timer("api.request.duration",
                "endpoint", endpoint,
                "status", "failure"));

            meterRegistry.counter("api.request.count",
                "endpoint", endpoint,
                "status", "failure").increment();

            throw e;
        }
    }
}
```

---

## 8. Security

### 8.1 Authentication & Authorization

**JWT Token Validation:**
```java
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Autowired
    private JwtTokenValidator tokenValidator;

    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                   HttpServletResponse response,
                                   FilterChain filterChain)
            throws ServletException, IOException {

        String authHeader = request.getHeader("Authorization");

        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED,
                             "Missing or invalid Authorization header");
            return;
        }

        String token = authHeader.substring(7);

        try {
            JwtClaims claims = tokenValidator.validate(token);

            // Set authentication context
            SecurityContextHolder.getContext()
                .setAuthentication(new JwtAuthentication(claims));

            filterChain.doFilter(request, response);

        } catch (JwtValidationException e) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED,
                             "Invalid token: " + e.getMessage());
        }
    }
}
```

### 8.2 Data Sanitization

**Input Sanitization:**
- Remove SQL injection patterns
- Remove XML injection patterns
- Validate against XSS attacks
- Limit field lengths

```java
@Component
public class DataSanitizer {

    private static final Pattern SQL_INJECTION_PATTERN =
        Pattern.compile("('.+--)|(--)|(;)|(\\bOR\\b)|(\\bAND\\b)",
                       Pattern.CASE_INSENSITIVE);

    private static final Pattern XML_INJECTION_PATTERN =
        Pattern.compile("[<>]");

    public String sanitize(String input) {
        if (input == null) {
            return null;
        }

        // Check for SQL injection
        if (SQL_INJECTION_PATTERN.matcher(input).find()) {
            throw new ValidationException("Invalid input: potential SQL injection");
        }

        // Check for XML injection
        if (XML_INJECTION_PATTERN.matcher(input).find()) {
            throw new ValidationException("Invalid input: XML special characters");
        }

        // Encode special characters
        return StringEscapeUtils.escapeXml11(input);
    }
}
```

### 8.3 Sensitive Data Masking

**Log Masking:**
```java
@Component
public class SensitiveDataMasker {

    private static final List<String> SENSITIVE_FIELDS = Arrays.asList(
        "policyNumber", "accountNumber", "cifKey", "staffNumber"
    );

    public String maskSensitiveData(String json) {
        JsonNode node = objectMapper.readTree(json);
        maskNode(node);
        return objectMapper.writeValueAsString(node);
    }

    private void maskNode(JsonNode node) {
        if (node.isObject()) {
            node.fields().forEachRemaining(entry -> {
                if (SENSITIVE_FIELDS.contains(entry.getKey())) {
                    ((ObjectNode) node).put(entry.getKey(), "***MASKED***");
                } else {
                    maskNode(entry.getValue());
                }
            });
        } else if (node.isArray()) {
            node.forEach(this::maskNode);
        }
    }
}
```

---

## 9. Performance Optimization

### 9.1 Caching Strategy

**Cache Configuration:**
```java
@Configuration
@EnableCaching
public class CacheConfig {

    @Bean
    public CacheManager cacheManager() {
        CaffeineCacheManager cacheManager = new CaffeineCacheManager(
            "transformers", "validationRules", "enumMappings"
        );

        cacheManager.setCaffeine(Caffeine.newBuilder()
            .maximumSize(1000)
            .expireAfterWrite(10, TimeUnit.MINUTES)
            .recordStats());

        return cacheManager;
    }
}
```

**Cached Components:**
- Transformer instances
- Validation rule configurations
- Enum mapping lookups
- JWT token claims (short TTL)

### 9.2 Connection Pooling

```java
@Configuration
public class HttpClientConfig {

    @Bean
    public HttpComponentsClientHttpRequestFactory httpRequestFactory() {
        HttpClientBuilder builder = HttpClientBuilder.create();

        // Connection pooling
        PoolingHttpClientConnectionManager connectionManager =
            new PoolingHttpClientConnectionManager();
        connectionManager.setMaxTotal(100);
        connectionManager.setDefaultMaxPerRoute(20);

        builder.setConnectionManager(connectionManager);

        // Timeouts
        RequestConfig requestConfig = RequestConfig.custom()
            .setConnectTimeout(5000)
            .setSocketTimeout(30000)
            .build();

        builder.setDefaultRequestConfig(requestConfig);

        return new HttpComponentsClientHttpRequestFactory(builder.build());
    }
}
```

### 9.3 Asynchronous Processing

For non-critical operations:

```java
@Async
public CompletableFuture<Void> logAuditTrail(String request, String response) {
    auditRepository.save(new AuditLog(request, response, LocalDateTime.now()));
    return CompletableFuture.completedFuture(null);
}
```

---

## 10. Testing Strategy

### 10.1 Unit Testing

**Transformer Tests:**
```java
@Test
public void testLifePolicyTransformation() {
    // Arrange
    LifePolicyRequest request = buildSampleLifePolicyRequest();
    TransformationContext context = buildContext("ROI", "C");

    // Act
    String xml = lifePolicyTransformer.transformToXml(request, context);

    // Assert
    assertThat(xml).contains("<SECURITY_TYPE index=\"1\">LIFE POL</SECURITY_TYPE>");
    assertThat(xml).contains("<POLICY_NUMBER index=\"1\">45677</POLICY_NUMBER>");
    assertThat(xml).contains("<servType500>C</servType500>");
}

@Test
public void testInvolvementGroupMapping() {
    // Test that customer securities are correctly mapped to involvement groups
    List<CustomerSecurity> customers = buildCustomerSecurities();

    String xml = lifePolicyTransformer.transformToXml(
        buildRequestWithCustomers(customers), context
    );

    assertThat(xml).contains("<BENOWN_INV_GROUP>2</BENOWN_INV_GROUP>");
    assertThat(xml).contains("<BORROWCUST_INV_GROUP>2</BORROWCUST_INV_GROUP>");
}
```

**Validator Tests:**
```java
@Test(expected = ValidationException.class)
public void testInvalidSecurityType() {
    LifePolicyRequest request = new LifePolicyRequest();
    request.getSecurityItem().setSecurityType("INVALID");

    validator.validate(request);
}
```

### 10.2 Integration Testing

**End-to-End Tests:**
```java
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
public class LifePolicyIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private BackendIntegrationService backendService;

    @Test
    public void testCreateLifePolicy() throws Exception {
        // Mock backend response
        String mockXmlResponse = loadResource("sample_response.xml");
        when(backendService.callService(anyString(), anyString()))
            .thenReturn(mockXmlResponse);

        // Perform request
        mockMvc.perform(post("/roi/v1/securities-mortgage/life-policy")
                .header("Authorization", "Bearer " + generateTestToken())
                .contentType(MediaType.APPLICATION_JSON)
                .content(loadResource("life_policy_request.json")))
            .andExpect(status().isCreated())
            .andExpect(jsonPath("$.ledCollateInternaId").value("68641399"))
            .andExpect(jsonPath("$.assetCollateInternaId[0]").value("36277935"));
    }
}
```

### 10.3 Contract Testing

Use sample XMLs as contract tests to ensure transformation accuracy:

```java
@Test
public void testContractCompliance_SecuritiesService004() {
    // Load sample XML
    String sampleXml = loadResource("SecuritiesService004_AssignmentOfLifePolicy.xml");

    // Parse expected values
    String expectedPolicyNumber = extractFromXml(sampleXml, "//POLICY_NUMBER");

    // Create request from sample
    LifePolicyRequest request = createRequestFromSample();

    // Transform
    String generatedXml = transformer.transformToXml(request, context);

    // Verify key fields match
    String actualPolicyNumber = extractFromXml(generatedXml, "//POLICY_NUMBER");
    assertEquals(expectedPolicyNumber, actualPolicyNumber);
}
```

---

## 11. Deployment Considerations

### 11.1 Configuration Management

**Application Properties:**
```yaml
server:
  port: 8080

spring:
  application:
    name: securities-transformation-service

backend:
  service:
    url: ${BACKEND_SERVICE_URL:http://localhost:9090}
    timeout: ${BACKEND_TIMEOUT:30000}

security:
  jwt:
    secret: ${JWT_SECRET}
    issuer: ${JWT_ISSUER}

logging:
  level:
    com.aib.securities: DEBUG
    org.springframework.web: INFO
  pattern:
    console: "[%d{yyyy-MM-dd HH:mm:ss}] [%level] [%thread] [%logger] - [%X{correlationId}] %msg%n"
```

### 11.2 Docker Configuration

**Dockerfile:**
```dockerfile
FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
```

**docker-compose.yml:**
```yaml
version: '3.8'
services:
  securities-transformation-service:
    build: .
    ports:
      - "8080:8080"
    environment:
      - BACKEND_SERVICE_URL=http://legacy-service:9090
      - JWT_SECRET=${JWT_SECRET}
    depends_on:
      - legacy-service
```

### 11.3 Health Checks

```java
@Component
public class BackendServiceHealthIndicator implements HealthIndicator {

    @Autowired
    private BackendIntegrationService backendService;

    @Override
    public Health health() {
        try {
            // Ping backend service
            backendService.healthCheck();
            return Health.up()
                .withDetail("backend", "Available")
                .build();
        } catch (Exception e) {
            return Health.down()
                .withDetail("backend", "Unavailable")
                .withDetail("error", e.getMessage())
                .build();
        }
    }
}
```

---

## 12. Complete Field Mapping Reference

### 12.1 Life Policy (Service004)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| assignmentOfLife.assignmentDate | ASSIGNMENT_DATE | Date | dd/MM/yyyy | Optional |
| assignmentOfLife.eventWhenPayble | EVENT_WHEN_PAYABLE | Enum | BEFR/DEAT/MATU | Optional |
| assignmentOfLife.expiryDate | LIFEPOL_EXPIRY_DATE | Date | dd/MM/yyyy | Optional |
| assignmentOfLife.insuranceId | ASSURANCE_CO_CODE | String | Max 10 | FK to insurance company |
| assignmentOfLife.policyNumber | POLICY_NUMBER | String | Max 20 | Required |
| assignmentOfLife.policyType | POLICY_TYPE | Enum | See swagger | Required |
| assignmentOfLife.sumAssured | SUM_ASSURED | Numeric | Max 15 | Optional |
| securityItem.itemNumber | ITEM_NUMBER | String | Numeric | Required for UPDATE |
| securityItem.currentStatus | CURRENT_STATUS | Enum | See swagger | Required |
| securityItem.securityType | SECURITY_TYPE | Fixed | "LIFE POL" | Always |
| securityItem.currencyType | CURRENCY_TYPE | String | 3 chars | ISO code |
| securityItem.slaCode | SLA_CODE | Enum | A0/H0/L0/N0/S0 | Required |
| securityItem.napsAppId | NAPS_APP_ID | String | Numeric | Optional |
| securityItem.solicitorCode | SOLICITOR_CODE | String | Numeric | FK to solicitor |

### 12.2 Letter of Guarantee (Service003)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| letterOfGuarantee.guaranteeAmount | GUARANTEE_AMOUNT | Numeric | 15,2 | Required |
| letterOfGuarantee.guaranteeDate | GUARANTEE_DATE | Date | dd/MM/yyyy | Optional |
| letterOfGuarantee.guaranteeType | GUARANTEE_TYPE | Enum | See swagger | Required |
| letterOfGuarantee.relationshipType | RELATIONSHIP_TYPE | Enum | DIR/FAMY/OTHR/PASU/SPSE | Required |
| letterOfGuarantee.letterOfWaiverIndicator | LETTER_OF_WAIVER_INDICATOR | Enum | 0/1 | Optional |

### 12.3 Debenture (Service033)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| debenture.debentureType | DEBENTURE_TYPE | Enum | See swagger | Required |
| debenture.securityDate | SECURITY_DATE | Date | dd/MM/yyyy | Optional |
| debenture.deedRegistryDate | REG_DEEDS_DATE_REG | Date | dd/MM/yyyy | Optional |
| debenture.registryDeedBookNo | REG_DEEDS_BOOK_NO | String | Max 4 | Optional |
| debenture.registryDeedPageNo | REG_DEEDS_PAGE_NO | String | Max 4 | Optional |
| propertyDetail[].propertyId | DB_PROPERTY_ID | String | Numeric | Property FK |
| propertyDetail[].propertyAddress1 | DB_PROPERTY_ADDRESS_1 | String | Max 30 | Required |
| propertyDetail[].folioDetail.folioNumber | DB_FOLIO_NUMBER | String | Max 15 | Optional |
| propertyDetail[].folioDetail.county | DB_FOLIO_COUNTY | String | 2 chars | County code |

### 12.4 Counter Indemnity (Service006)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| counterIndemnity.indemnityDate | INDEMNITY_DATE | Date | dd/MM/yyyy | Optional |
| counterIndemnity.indemnityType | INDEMNITY_TYPE | Enum | CUST/GLOB/STD/BOND | Required |
| bondGuaranteeFacility.amount | AMOUNT | Numeric | 15,2 | Required |
| bondGuaranteeFacility.currency | AMOUNT_CURRENCY | String | 3 chars | ISO code |
| bondGuaranteeFacility.dateOfBond | DATE_OF_BOND | Date | dd/MM/yyyy | Required |
| bondGuaranteeFacility.expiryDate | INDEMNITY_EXPIRY_DATE | Date | dd/MM/yyyy | Optional |
| bondGuaranteeFacility.bondType | TYPE | Enum | BOND/GUAR/STD | Required |
| bondGuaranteeFacility.subOfGuarantee | VL_SUBJECT_OF_GUARANTEE_BOND | String | Max 60 | Optional |
| bondGuaranteeFacility.maximumExposure | MAXIMUM_EXPOSURE | Numeric | 15,2 | Optional |

### 12.5 Letter of Pledge (Service042)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| letterOfPledge.pledgeType | PLEDGE_TYPE | Enum | PLED/PLEB/CHGP/CHGB | Required |
| letterOfPledge.dateOfPledge | DATE_OF_PLEDGE | Date | dd/MM/yyyy | Optional |
| letterOfPledge.brokerId | BROKER_ID | String | Max 19 | Optional |
| letterOfPledge.brokerContact | BROKER_CONTACT_NAME | String | Max 30 | Optional |
| letterOfPledge.portfolioNumber | PORTFOLIO_NUMBER | String | Max 10 | Optional |
| shareDetails[].shareId | SHARE_ID | String | Numeric | Required |
| shareDetails[].issuer | ISSUER | String | Max 30 | Required |
| shareDetails[].noOfShares | NUMBER_OF_SHARES | Numeric | 15 digits | Required |
| shareDetails[].baseValue | BASE_VALUE | Numeric | 22,2 | Optional |
| shareDetails[].currencyType | SHARE_CURRENCY | String | 3 chars | ISO code |
| shareDetails[].registeredIn | REGISTERED_IN | String | Max 4 | Optional |

### 12.6 Letter of Lien (Service007)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| letterOfLien.letterType | LIEN_TYPE | Enum | ASSN/LIEC/LIEM/LIEP/SET | Required |
| letterOfLien.letterDate | LIEN_LETTER_DATE | Date | dd/MM/yyyy | Optional |
| letterOfLien.depositeLocation | DEPOSIT_LOCATION | Enum | AIB/CAPT/CI/FINL/INVS/IOM/OTHR | Required |
| accountInstruction.accountNumber | ACCOUNT_NUMBER | String | Max 20 | Required |
| accountInstruction.nsc | NSC | Numeric | 6 digits | Required |
| accountInstruction.creditBalanceLimit | CREDIT_BALANCE_LIMIT | Numeric | 15,2 | Required |

### 12.7 Solicitor Undertaking (Service005)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| solicitorUndertaking.undertakingType | UNDERTAKING_TYPE | Enum | LAND/SHIP | Required |
| solicitorUndertaking.undertakingDate | UNDERTAKING_DATE | Date | dd/MM/yyyy | Optional |
| solicitorUndertaking.undertakingDescription | UNDERTAKING_DESCRIPTION | Enum | See swagger | Required |
| solicitorUndertaking.siteValue | SITE_VALUE | Numeric | Decimal | Optional |
| solicitorUndertaking.shipDetails | SHIP_DETAILS | String | Text | Optional |
| solicitorUndertaking.transferTo | TRANSFER_TO | String | Max 40 | Optional |
| propertyId | UT_PROPERTY_ID | String | Numeric | FK to property |

### 12.8 Mortgage Over Property (Service034)

| **JSON Path** | **XML Path** | **Data Type** | **Format** | **Notes** |
|--------------|-------------|--------------|-----------|-----------|
| propertyDetail[].propertyId | PROP_PROPERTY_ID | String | Numeric | FK |
| propertyDetail[].propertyAddress1 | PROP_PROPERTY_ADDRESS_1 | String | Max 30 | Required |
| propertyDetail[].propertyAddress2 | PROP_PROPERTY_ADDRESS_2 | String | Max 30 | Optional |
| propertyDetail[].propertyAddress3 | PROP_PROPERTY_ADDRESS_3 | String | Max 30 | Optional |
| propertyDetail[].propertyAddress4 | PROP_PROPERTY_ADDRESS_4 | String | Max 30 | Optional |
| propertyDetail[].folioDetail.folioNumber | PROP_FOLIO_NUMBER | String | Max 15 | Optional |
| propertyDetail[].folioDetail.county | PROP_FOLIO_COUNTY | String | 2 chars | County code |
| propertyDetail[].commercialLeaseIndicator | PROP_RESIDENTIAL_INDICATOR | Enum | 1/2/3/etc | Property type |

---

## 13. Appendix

### 13.1 Service Mapping Matrix

| **UI Action** | **Service Name** | **Swagger** | **Endpoint** | **Transformer** |
|--------------|-----------------|------------|-------------|----------------|
| Create → Letter of Pledge | SecuritiesService042 | swagger2 | /letter-of-pledge | LetterOfPledgeTransformer |
| Update → Letter of Pledge | SecuritiesService042 | swagger2 | /letter-of-pledge | LetterOfPledgeTransformer |
| Create → Letter of Guarantee | SecuritiesService003 | swagger1 | /letter-of-guarantee | LetterOfGuaranteeTransformer |
| Update → Letter of Guarantee | SecuritiesService003 | swagger1 | /letter-of-guarantee | LetterOfGuaranteeTransformer |
| Create → Letter of Lien | SecuritiesService007 | swagger2 | /letter-of-lien | LetterOfLienTransformer |
| Update → Letter of Lien | SecuritiesService007 | swagger2 | /letter-of-lien | LetterOfLienTransformer |
| Create → Counter Indemnity | SecuritiesService006 | swagger2 | /counter-indemnity | CounterIndemnityTransformer |
| Update → Counter Indemnity | SecuritiesService006 | swagger2 | /counter-indemnity | CounterIndemnityTransformer |
| Create → Assignment Of Life Policy | SecuritiesService004 | swagger1 | /life-policy | LifePolicyTransformer |
| Update → Assignment of Life Policy | SecuritiesService004 | swagger1 | /life-policy | LifePolicyTransformer |
| Create → Mortgage Over Property | SecuritiesService034 | swagger1 | /mortgage-over-property | MortgageOverPropertyTransformer |
| Update → Mortgage Over Property | SecuritiesService034 | swagger1 | /mortgage-over-property | MortgageOverPropertyTransformer |
| Create → Mortgage Debenture | SecuritiesService033 | swagger1 | /debenture | DebentureTransformer |
| Update → Mortgage Debenture | SecuritiesService033 | swagger1 | /debenture | DebentureTransformer |
| Create → Solicitor's Undertaking | SecuritiesService005 | swagger1 | /solicitor-undertaking | SolicitorUndertakingTransformer |
| Update → Solicitor's Undertaking | SecuritiesService005 | swagger1 | /solicitor-undertaking | SolicitorUndertakingTransformer |

### 13.2 Glossary

| **Term** | **Definition** |
|---------|---------------|
| CIF | Customer Information File - Unique customer identifier |
| NAPS | New Applications Processing System |
| NSC | National Sort Code - Branch identifier |
| SLA Code | Service Level Agreement Code |
| Involvement | Customer or entity relationship to a security |
| servType500 | Service type indicator (C=Create, U=Update) |
| Folio | Property registration reference number |

### 13.3 References

- Swagger Specification: OpenAPI 2.0
- XML Schema: Custom AIB Securities Schema
- Authentication: JWT (RFC 7519)
- Date Format: ISO 8601 (yyyy-MM-dd) for JSON, dd/MM/yyyy for XML

---

## 14. Revision History

| **Version** | **Date** | **Author** | **Changes** |
|-----------|---------|-----------|------------|
| 1.0 | 2025-10-07 | [Your Name] | Initial LLD document |

---

**End of Document**
