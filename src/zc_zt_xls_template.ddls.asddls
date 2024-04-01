@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_XLS_TEMPLATE'
define root view entity ZC_ZT_XLS_TEMPLATE
  provider contract transactional_query
  as projection on ZR_ZT_XLS_TEMPLATE
{
  key UUID,
  TemplateName,
  XlsxDataSource,
  LocalLastChangedAt
  
}
