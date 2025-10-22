# Guiding Principles {#sec:guiding_principles}

## Architectural Parameters

This section describes the architectural parameters for the MS-2 Aids to Navigation Service. These refer to the key design choices and considerations that shape the overall structure and behaviour of a system. These parameters can influence how well the system performs its intended functions, interacts with other systems, and responds to various inputs.

Each architectural parameter is described in its section below, with the rational for each being clearly stated.

### Focus on the Provision of AtoN Information

The Aton Authorities of the IALA member states, as the organizations responsible for the maintenance and operation of the marine Aids to Navigation in their respective geographical areas, are primarily concerned with fulfilling their day-to-day responsibilities. The aspiration for the MS-2 – Aids to Navigation Service is to support them in that regard. The service should therefore only provide the relevant AtoN information and report discrepancies as soon as possible. Additional information and functionality should be avoided, for the benefit of simplicity and reliability. As the IALA Dictionary definition of a Marine Aids to Navigation (AtoN) ***"means a device, system, or service, external to a vessel, designed and operated to enhance safe and efficient navigation of all vessels and/or vessel traffic"***, the service itself may be regarded as an Marine AtoN, and therefore the AtoN categorization and availability objectives, as per IALA O-130 [@cite:iala-o130], could potentially apply to it. 

### Use of the IHO S-100 Framework

AtoN, NW (MSI-related) and any other related maritime information, must be provided using methods that conform to the S-100 framework. This is a key principle for achieving the IMO e Navigation goal of ***"the harmonized collection, integration, exchange, presentation and analysis of maritime information on-board and ashore by electronic means"*** [@cite:imo-msc-1-circ1595-2018]. The exchanged data can be packaged in multiple ways, but under the S-100 framework there are two main recognised container types:

* Exchange of "pure" S-100 Datasets, and

* Exchange of S-100 100 Exchange Sets, along with the machine readable parts of the product specification.

S-100 datasets are in most cases XML-based files, that contain no additional metadata. This simpler representation of AtoN information, can in some cases might be the preferred way for transferring the data, especially if these are not intended for portrayal on ECDIS devices. A related use case could be the digital equivalent of the current List of Lights carriage requirement. 

However, for cases where the data is intended (directly or indirectly) for consumption by ECDIS, or other equipment covered by SOLAS, additional information such as the data product feature catalogue and relevant metadata (including security details) is necessary. In S-100, these data structures are organised into a collection of files, known as Exchange Sets. This would be the method of choice for transferring the AtoN information in the [@fig:aton-information-flow] data flow, which passes through the HO and the RENCs.

### Use of Established Data Products

AtoN and NW (MSI-related) information must be provided using the existing relevant S-100 product specifications, if present. More specifically, for the associated technical services list, identified in [@sec:introduction_context] the respective IHO data products based on the S-100 framework are:

* S-124

* S-125

* S-201

* S-240

This way the information will be more widely understood, while the services will reuse existing data product specifications. For cases where an existing data product specification is not available (e.g. in the case of AtoN Status Reports from mariners), new data standardized product specifications should be proposed and developed.

### Secure by Design

"Secure by Design" is an approach to system development that prioritizes security as a fundamental aspect of the design process, rather than treating it as an afterthought or an add-on feature. This means that security considerations are integrated into every stage of the development lifecycle, from initial concept and design to implementation, testing, and deployment.

This approach is mandatory to be incorporated into the new development of all the MS-2 – Aids to Navigation Service subsystems. Service providers should be able to secure their AtoN information flows, ensuring that only authorised users utilise the system resources, and that this is achieved in a controlled manner. In addition, authentication and authorisation techniques can be used to support potential auditing and even billing capabilities. Finally, all end-users should also be able to independently verify the integrity and accuracy of the information they have received. 

### Leverage Automation

One of the key advantages of the MS-2 – Aids to Navigation Service should be its focus on automating tasks, which currently might be performed manually and are quite laborious or prone to errors. By automating these tasks, the MS-2 service can achieve higher data quality and reduce the data processing times. Automation techniques may include examples of Application Programming Interfaces (API), machine readable formats for the data, as well as advanced algorithmic and machine-learning techniques.

Of particular interest to the AtoN Authorities of the IALA member states, is the automation of the communication between them and the HOs. Automatic updates on the status of the AtoN operations, as well as automatic confirmations of successful receipt of those updates by the HO, should be considered as the top priorities during the first phases of the MS-2 deployment.

### Data Driven

The operation of the MS-2 – Aids to Navigation service should be data driven, meaning that the information flow processes should follow the AtoN status changes. This would ensure that critical information, such as AtoN outages, as well as the NW (MSI-related) generation procedures put in place, are promulgated as soon as available.

It is however well understood that this might not always be feasible - at least not during the first phases of the system deployment (due to practical reasons, resource constraints etc.). It is therefore expected that at least initially, only the high priority AtoN discrepancies/changes and NW (MSI-related) information, would follow the data driven approach, while the rest of the AtoN information data flows of [@fig:aton-information-flow], would be produced and promulgated at regular intervals (e.g. once a day or a week).

## Functional and Non-Functional Requirements

| Requirement Type | Requirement ID | Requirement Name | Requirement Text | Feature Identifier |
| --- | --- | --- | --- | --- |
| **Functional** | MS2-FR001 | Provision of dataset(s) | The service provides S-100 compliant dataset(s) with all current and valid AtoN Information assigned to that dataset(s). | F001, F005 |
| **Functional** | MS2-FR002 | Request for dataset(s) | The end users can receive on demand S-100 compliant dataset(s).  Service providers will respond with current data relevant to the request but will not subdivide datasets to less than that defined by the authoritative source of the data. | F001, F005 |
| **Functional** | MS2-FR003 | Filter AtoN Information | The end-users can filter the AtoN information based on a point, line, polygon geometry, AtoN type, AtoN status etc. | F001, F008 |
| **Functional** | MS2-FR004 | Retrieve AtoN Status Updates | The end-users are able to request and filter out only the AtoN which have associated status changes. | F001, F008 |
| **Functional** | MS2-FR005 | Subscribe to dataset(s) | The end users can subscribe to receive S-100 compliant dataset(s) and their respective updates. Subscription requests should be able to include the start and stop time of the subscription. | F002, F004, F005 |
| **Functional** | MS2-FR006 | Status of Subscription | The service provides a subscription status notification. This could indicate termination of subscription from the service provider side. | F002, F003 |
| **Functional** | MS2-FR007 | Data Update Status | The service must be able to provide the users with the status of their respective subscriptions and whether the current dataset is the latest one, along with other relevant information. | F002, F006 |
| **Functional** | MS2-FR008 | Cancellation of Subscription | The service provides a facility to cancel the subscription. | F004 |
| **Functional** | MS2-FR009 | Data Validation Certificate | The service can provide on demand the security certificate that was used to secure the data transmission. | F006, F009 |
| **Functional** | MS2-FR010 | Discrepancy Reporting | Provides a secure but open interface for reporting discrepancies. These reports should be authorized, and anonymous reporting should not be allowed. | F007, F016, F017 |
| **Functional** | MS2-FR011 | Discrepancy Flagging | Multiple AtoN service discrepancies are flagged to system administrators as soon as they are reported, so that they can be actioned. | F007, F016, F017 |
| **Functional** | MS2-FR012 | Information Filtering | The end users can filter the relevant AtoN information by name or based on a point, line, polygon geometry, or receive the complete service content.  | F008 |
| **Functional** | MS2-FR013 | Delivery Acknowledgement Request | The service is able to request a data delivery acknowledgement for any end-user. The requested acknowledgement should support multiple levels (receiving, reading etc.) | F011 |
| **Functional** | MS2-FR014 | Delivery Acknowledgement Confirmation | The service provides a common but secure facility for all end-users to acknowledge the successful updates of AtoN information if requested. | F011 |
| **Functional** | MS2-FR015 | Subscription Updates | The service is able to identify and contact the subscribed end-users to push updates on the requested dataset(s). | F012 |
| **Functional** | MS2-FR016 | Input Automation | The service updates the advertised datasets, based on the AtoN status updates received. | F013 |
| **Functional** | MS2-FR017 | End-User Precision Tailoring | The service is able to supply AtoN information with certain details (e.g. precision of decimal points) tailored to the correspondig end-user. | F010, F018 |
| **Functional** | MS2-FR018 | Change Log | The service allows data producers to track the record of changes to the advertised dataset(s) for any time interval required. | F015 |
| **Functional** | MS2-FR019 | Change Log State | The service allows data producers to view the full state of the AtoN Information as provided to consumers at any past point in time. | F015 |

: Functional Requirements for the MS-2 AtoN Information Service. {#tbl:ms2-functional-requirements}

| Requirement Type | Requirement ID | Requirement Name | Requirement Text | Feature Identifier |
| --- | --- | --- | --- | --- |
| **Non-functional** | MS2-NFR001 | Authorization | Service consumers are authorized by the provider for reception of data by the service. This may be public authorization (everyone has access), or limited authorization associated with a transactional service | F010, F016, F017 |
| **Non-functional** | MS2-NFR002 | Authenticity | Service consumers can verify independently the authenticity of the AtoN information transmitted to them. | F006, F009 |
| **Non-functional** | MS2-NFR003 | Integrity | It is clear to both service provider and consumer whether changes have been made to the AtoN information after this was created. | F006, F009 |
| **Non-functional** | MS2-NFR004 | Availability | The service is consistently available in its ability to deliver AtoN Information to its consumers. (i.e. Service should have a high availability) | F001, F002, F004, F005, F011, F013 |
| **Non-functional** | MS2-NFR005 | Responsiveness | The service provides a response to a service consumer’s request without delay, and the data provided should be (near) real time. | F001, F002, F011, F016
| **Non-functional** | MS2-NFR006 | Performance | The service can handle multiple requests simultaneously (e.g. 1000/sec). | F001, F010, F012 |
| **Non-functional** | MS2-NFR007 | Portability | The service makes the data available in portable machine-readable formats (e.g. XML/JSON) | F014
| **Non-functional** | MS2-NFR008 | Compression | The service is able transmit the data in compressed format, with the compression method (e.g., gzip) clearly indicated. | F001. F005, F008 |
| **Non-functional** | MS2-NFR009 | Accessibility | The AtoN information is accessible as much as possible and modern APIs should be supported for machine-to-machine communication. | F005, F010, F013, F014 |
| **Non-functional** | MS2-NFR010 | Compatibility | The service is compatible with as many end-user devices as possible and conforms to the latest relevant maritime standards (e.g. IEC 63173-2 (SECOM), S-100 (S-124, S-125, S-201, S-240)) | F005, F010, F013, F014 |

: Non-Functional Requirements for the MS-2 AtoN Information Service. {#tbl:ms2-non-functional-requirements}