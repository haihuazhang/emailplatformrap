@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Template Configuration of XLSX'
define root view entity ZR_ZT_XLS_TEMPLATE
  as select from zzt_xls_template as XLSX
{
  key uuid as UUID,
  template_name as TemplateName,
  xlsx_data_source as XlsxDataSource,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
  
}
