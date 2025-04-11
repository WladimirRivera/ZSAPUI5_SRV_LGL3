@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Consumption RAP Signature'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_SIGNATURE_SET3
  as projection on Z_R_SIGNATURE_SET3
{
  key OrderID,
  key SapID,
  key EmployeeID,
      @Semantics.mimeType: true
      MimeType,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'FileName',
      contentDispositionPreference: #INLINE }
      MediaContent
}
