@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_CONF_A'
define view entity ZC_ZT_EMAIL_CONF_A
  //  provider contract transactional_query
  as projection on ZR_ZT_EMAIL_CONF_A
{
  key UUID,
      EmailConfigUUID,
      Type,
      AttachConfigUUID,
      LocalLastChangedAt,
      _Config : redirected to parent ZC_ZT_EMAIL_CONF

}
