@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP signature'
define root view entity Z_R_SIGNATURE_SET3
  as select from ZDD_SIGNATURE_SET3
{
  key OrderID,
  key SapID,
  key EmployeeID,
      MimeType,
      MediaContent

}
