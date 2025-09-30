# Definitions

The definitions of terms used in this Guideline can be found in the *International Dictionary of Marine Aids to Navigation* (IALA dictionary) and were checked as correct at the time of going to print. Where conflict arises, the IALA Dictionary should be considered as the authoritative source of definitions used in IALA documents.

Authentication
  ~ (from Greek: αὐθεντικός *authentikos*, "real, genuine", from αὐθέντης *authentes*, "author") is the act of proving an assertion, such as the identity of a computer system user [@cite:wikipedia-authentication].

Maritime Safety Information
  ~ Navigational and meteorological warnings, meteorological forecasts and other urgent safety-related messages.

Navigational Warning
  ~ A broadcast message containing urgent information relevant to safe navigation.

Navaid
  ~ An instrument, device or nautical publication carried on board a vessel for the purpose of assisting navigation.

NAVAREA
  ~ A geographical sea area, as shown in the appendix (IMO A.706(17) established for the purpose of co-ordinating the transmission of radio navigational warnings. Where appropriate, the term NAVAREA followed by an identifying roman numeral may be used as a short title. The delimitation of such areas is not related to and shall not prejudice the delimitation of any boundaries between States.

NAVTEX
  ~ Single frequency time-shared broadcast system with automated reception and message rejection/selection facilities. Use of NAVTEX is regulated by the IMO NAVTEX Manual (IMO publication 951).

Service
  ~ The provision of something (a non-physical object), by one, for the use of one or more others, regulated by formal definitions and mutual agreements. Services involve interactions between providers and consumers, which may be performed in a digital form (data exchanges) or through voice communication or written processes and procedures. 

Service Data Model
  ~ Formal description of one dedicated service at logical level. The service data model is part of the service specification. Is typically defined in UML and/or XSD. If an external data model exists (e.g., a standard data model), then the service data model shall refer to it: each data item of the service data model shall be mapped to a data item defined in the external data model.

Service Interface
  ~ The communication mechanism of the service, i.e., interaction mechanism between service provider and service consumer. A service interface is characterised by a message exchange pattern and consists of service operations that are either allocated to the provider or the consumer of the service.

Service Operation
  ~ Functions or procedures which enable programmatic communication with a service via a service interface.

Service Physical Data Model
  ~ Describes the realisation of a dedicated service data model in a dedicated technology. This includes a detailed description of the data S-212 to be exchanged using the chosen technology. The actual format of the service physical data model depends on the chosen technology. Examples may be WSDL and XSD files (e.g., for SOAP services) or swagger (Open API) specifications (e.g., for REST services). If an external data model exists (e.g., a standard data model), then the service physical data model shall refer to it: each data item of the service physical data model shall be mapped to a data item defined in the external data model.
  In order to prove correct implementation of the service specification, there shall exist a mapping between the service physical data model and the service data model. This means, each data item used in the service physical data model shall be mapped to a corresponding data item of the service data model. (In case of existing mappings to a common external (standard) data model from both the service data model and the service physical data model, such a mapping is implicitly given.)

\newpage
