@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP IncIDents'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_INCIDENT_SET3
  as select from ZDD_INCIDENTS_SET3
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
