@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - Files Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_FILES_SET3
  as select from zfilesset3
{
  key att_id        as AttID,
  key order_id      as OrderID,
  key sap_id        as SapID,
  key employee_id   as EmployeeID,
      file_name     as FileName,
      mime_type     as MimeType,
      media_content as MediaContent
}
