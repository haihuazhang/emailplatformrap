@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Recipent config of Email'
define view entity ZR_ZT_EMAIL_CONF_R
  as select from zzt_email_conf_r as Recipent
  association to parent ZR_ZT_EMAIL_CONF as _Config on $projection.EmailConfigUUID = _Config.UUID
{
  key uuid                  as UUID,
      email_config_uuid     as EmailConfigUUID,

      @Consumption.valueHelpDefinition: [{ entity:{element: 'value_low',name: 'ZR_RECIPIENTTYPE_VH'} }]
      recipent_type         as Type,
      recipent              as Recipent,
      recipent_data_source  as RecipentDataSource,
      recipent_field_name   as RecipentFieldName,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Config

}
