@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'valhe help of Attachment'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_ATTACHMENT_VH
  as select from ZR_ZT_XLS_TEMPLATE
  //composition of target_data_source_name as _association_name
{
  key UUID,
      TemplateName,
      cast ('XLSX' as abap.char( 4 ) ) as Type,
      CreatedBy,
      CreatedAt
}

union select from ZR_ZT_PRT_TEMPLATE
{
  key UUID,
      TemplateName,
      cast ('PDF' as abap.char( 4 ) ) as Type,
      CreatedBy,
      CreatedAt
}
