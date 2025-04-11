@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP Files'
define root view entity Z_R_FILES_SET3
  as select from ZDD_FILES_SET3
{
  key AttID,
  key OrderID,
  key SapID,
  key EmployeeID,
      FileName,
      MimeType,
      MediaContent
}
