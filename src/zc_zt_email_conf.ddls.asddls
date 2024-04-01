@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_CONF'
define root view entity ZC_ZT_EMAIL_CONF
  provider contract transactional_query
  as projection on ZR_ZT_EMAIL_CONF
{
  key UUID,
  ConfigName,
  DataSource,
  StartedWay,
  HasAttachment,
  LocalLastChangedAt,
  _Content : redirected to composition child ZC_ZT_EMAIL_TMPL,
  _Recipent : redirected to composition child ZC_ZT_EMAIL_CONF_R,
  _Attachment : redirected to composition child ZC_ZT_EMAIL_CONF_A,
  _Job : redirected to composition child ZC_ZT_EMAIL_JOB 
  
}
