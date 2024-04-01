@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_CONF_R'
define view entity ZC_ZT_EMAIL_CONF_R
  as projection on ZR_ZT_EMAIL_CONF_R
{
  key UUID,
      EmailConfigUUID,
      Recipent,
      Type,
      RecipentDataSource,
      RecipentFieldName,
      LocalLastChangedAt,
      _Config : redirected to parent ZC_ZT_EMAIL_CONF

}
