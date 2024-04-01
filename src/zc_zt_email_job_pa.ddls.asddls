@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_JOB_PA'
define view entity ZC_ZT_EMAIL_JOB_PA
  //  provider contract transactional_query
  as projection on ZR_ZT_EMAIL_JOB_PA
{
  key UUID,
      EmailConfigUUID,
      JobConfigUUID,
      ParameterName,
      ParameterOperator,
      ParameterLowValue,
      ParameterHighValue,
      LocalLastChangedAt,
      _Job    : redirected to parent ZC_ZT_EMAIL_JOB,
      _Config : redirected to ZC_ZT_EMAIL_CONF

}
