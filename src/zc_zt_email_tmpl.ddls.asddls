@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_TMPL'
define  view entity ZC_ZT_EMAIL_TMPL
//  provider contract transactional_query
  as projection on ZR_ZT_EMAIL_TMPL
  
{
  key UUID,
  EmailConfigUUID,
  TemplateName,
  Language,
  Type,
  Subject,
  Content,
//  DataSource,
  LocalLastChangedAt,
//  _Config.DataSource as ConfigDataSource,
  _Config : redirected to parent ZC_ZT_EMAIL_CONF
  
}
