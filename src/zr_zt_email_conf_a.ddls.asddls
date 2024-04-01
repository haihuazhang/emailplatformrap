@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Attachment Types of Email'
define view entity ZR_ZT_EMAIL_CONF_A
  as select from zzt_email_conf_a as Attachment
  association        to parent ZR_ZT_EMAIL_CONF as _Config on $projection.EmailConfigUUID = _Config.UUID
  association [0..1] to ZR_ZT_PRT_TEMPLATE      as _PDF    on $projection.AttachConfigUUID = _PDF.UUID
  association [0..1] to ZR_ZT_XLS_TEMPLATE      as _XLSX   on $projection.AttachConfigUUID = _XLSX.UUID
{
  key uuid                  as UUID,
      email_config_uuid     as EmailConfigUUID,
      @Consumption.valueHelpDefinition: [{ entity:{element: 'value_low',name: 'ZR_ATTACHMENTTYPE_VH'} }]
      attachment_type       as Type,
      @Consumption.valueHelpDefinition: [{ entity:{element: 'UUID',name: 'ZR_ATTACHMENT_VH'} , additionalBinding: [{ element: 'Type',localElement: 'Type' }]}]
      attach_config_uuid    as AttachConfigUUID,
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
      _Config,
      _PDF,
      _XLSX

}
