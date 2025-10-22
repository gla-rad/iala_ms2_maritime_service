# Features {#sec:features}

This section describes the main features of the MS-2 – Aids to Navigation Service. These should not be mistaken for the data model features defined in the S-100 framework; in the current context, ‘features’ refers specifically to the service’s functions and capabilities. A list of the main features identified, including their associated descriptions, is presented in [@tbl:ms2-feature-descriptions].

[@tbl:ms2-feature-descriptions] references several user roles, i.e. seafarers, AtoN authorities, VARs etc. Based on the data exchange interactions depicted in Figure 1, the identified roles can act as a Service Consumer or a Service Provider. In the present context, these are defined as:

* ***Service Consumer***: Refers to any intermediate or end user (as per Figure 1) who ultimately receives AtoN information. The service consumer is the party that benefits from the provided information, which helps them fulfil their statutory or business duties, or navigate safely and efficiently.

* ***Service Provider***: Any entity responsible for packaging, distributing, and presenting AtoN information to the intermediate or end-users (service consumers). This could be a government agency, such as an AtoN Authority or a Hydrographic Office. Alternatively, it might be a private company offering navigation services, like a marine data provider or an ECDIS manufacturer.

<div id="html_table" caption="MS-2 Feature Descriptions. {#tbl:ms2-feature-descriptions}">
<table>
<thead>
<tr>
  <th>Feature Identifier</th>
  <th>Feature Description</th>
  <th>Objective(s)</th>
</tr>
</thead>
<tbody>
<tr>
  <td rowspan="3">F001</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Retrieve AtoN information on specific areas using filtering criteria (e.g., area name, geometry, or dataset identifier), <br/></td>
</tr>
<tr>
  <td><strong>so that:</strong> I can access relevant navigation information for my operational needs and minimize the communication resource requirements.</td>
</tr>
<tr>
  <td rowspan="3">F002</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Subscribe to updates for specific AtoN information, <br/></td>
</tr>
<tr>
  <td><strong>so that:</strong> I can automatically receive changes without repeated manual requests, minimizing the required effort and delays.</td>
</tr>
<tr>
  <td rowspan="3">F003</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Terminate a subscription to the latest AtoN information when it is no longer needed,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can stop receiving unnecessary updates.</td>
</tr>
<tr>
  <td rowspan="3">F004</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Schedule a subscription to the latest AtoN information at any point in the future,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can automatically receive updates on change, but only when I need them to minimize use resource usage and costs.</td>
</tr>
<tr>
  <td rowspan="3">F005</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong>, <strong>OBJ5</strong>, <strong>OBJ6</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Receive information from multiple authorities using the same equipment  (including software),</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can safely navigate through multiple areas or responsibility.</td>
</tr>
<tr>
  <td rowspan="3">F006</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Confirm the integrity and validity of the received AtoN information even without always-on internet connectivity,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can make decisions based on data I can trust.</td>
</tr>
<tr>
  <td rowspan="3">F007</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> I want to be able to report discrepancies on AtoN in a standardised way,</td>
</tr>
<tr>
  <td><strong>so that:</strong> they can be addressed earlier.</td>
</tr>
<tr>
  <td rowspan="3">F008</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ3</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> View the AtoN information clearly, with the appropriate details and geographic context,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can navigate safely, regardless of whether I am on-board a ship with SOLAS equipment or not.</td>
</tr>
<tr>
  <td rowspan="3">F009</td>
  <td><strong>As a:</strong> AtoN Information VAR/ECS Provider,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ2</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> I want to be able review and verify the AtoN information I receive,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can guarantee that information to my own users.</td>
</tr>
<tr>
  <td rowspan="3">F010</td>
  <td><strong>As a:</strong> AtoN Information VAR/ECS Provider,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ2</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Make my services available only to authorised users,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can protect control who has access to my resources.</td>
</tr>
<tr>
  <td rowspan="3">F011</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Receive acknowledgments for important updates sent to certain consumers,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can confirm successful delivery and ensure the system reliability.</td>
</tr>
<tr>
  <td rowspan="3">F012</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ4</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Upload updated AtoN datasets to subscribed consumers, </td>
</tr>
<tr>
  <td><strong>so that:</strong> They always have the latest navigation information.</td>
</tr>
<tr>
  <td rowspan="3">F013</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ4</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Automate my AtoN servicing information ingest,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can realize operational efficiencies and minimize costs.</td>
</tr>
<tr>
  <td rowspan="3">F014</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ1</strong>,  <strong>OBJ5</strong>, <strong>OBJ6</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Make my services discoverable by any interested party,</td>
</tr>
<tr>
  <td><strong>so that:</strong> all my end users can easily have access to these.</td>
</tr>
<tr>
  <td rowspan="3">F015</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ2</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> Keep track of the changes made in my AtoN information,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can review what was sent to my users for auditing.</td>
</tr>
<tr>
  <td rowspan="3">F016 </td>
  <td><strong>As a:</strong>  AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong>  access information on the status of AtoN from the consumers,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can check it and then send the MSI consequently.</td>
</tr>
<tr>
  <td rowspan="3">F017</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ4</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> validate the user-reported information on the status of AtoN from the consumers,</td>
</tr>
<tr>
  <td><strong>so that:</strong> I can ensure the correctness of the information sent as MSI.</td>
</tr>
<tr>
  <td rowspan="3">F018</td>
  <td><strong>As a:</strong> AtoN Authority,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ2</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> be able to reduce the precision of the publicly reported AtoN locations,</td>
</tr>
<tr>
  <td><strong>so that:</strong> small craft users, non-covered by SOLAS, will not accidentally hit them.</td>
</tr>
<tr>
  <td rowspan="3">F019</td>
  <td><strong>As a:</strong> Seafarer,</td>
  <td rowspan="3"><strong>OBJ1</strong>, <strong>OBJ5</strong></td>
</tr>
<tr>
  <td><strong>I want to:</strong> be able to see only the AtoN status change information on top of my navigational chart,</td>
</tr>
<tr>
  <td><strong>so that:</strong>: the display of information is harmonized and it is clear what the significant changes in AtoNs are.</td>
</tr>
</tbody>
</table>
</div>