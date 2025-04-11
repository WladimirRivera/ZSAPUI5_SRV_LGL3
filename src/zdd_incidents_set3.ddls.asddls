@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - IncIDents Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_INCIDENTS_SET3
  as select from zincidentsset3
  association [0..1] to zdd_signature_set3 as _Signature on  _Signature.SapID = $projection.SapID
  association [1..*] to zdd_files_set3     as _Files     on  _Files.SapID      = $projection.SapID
                                                        and _Files.EmployeeID = $projection.EmployeeID
{
  key incidence_id    as IncIDenceID,
  key sap_id          as SapID,
  key employee_id     as EmployeeID,
      creation_date   as CreationDate,
      creation_date_x as CreationDateX,
      type            as Type,
      type_x          as TypeX,
      reason          as Reason,
      reason_x        as ReasonX,
      _Signature,
      _Files
}
