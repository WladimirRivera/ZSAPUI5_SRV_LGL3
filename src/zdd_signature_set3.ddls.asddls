@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - Signature Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_SIGNATURE_SET3
  as select from zsignatureset3
{
  key order_id      as OrderID,
  key sap_id        as SapID,
  key employee_id   as EmployeeID,
      mime_type     as MimeType,
      media_content as MediaContent
}
