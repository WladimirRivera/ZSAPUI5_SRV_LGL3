@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Consumption RAP IncIDents'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_INCIDENT_SET3
  as projection on Z_R_INCIDENT_SET3
{
  key IncIDenceID,
  key SapID,
  key EmployeeID,
      CreationDate,
      CreationDateX,
      Type,
      TypeX,
      Reason,
      ReasonX,
      /* Associations */
      _Files,
      _Signature
}
