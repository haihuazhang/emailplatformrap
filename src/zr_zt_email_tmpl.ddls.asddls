@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Email Template'
define view entity ZR_ZT_EMAIL_TMPL
  as select from zzt_email_tmpl as MailTemplate

  association to parent ZR_ZT_EMAIL_CONF as _Config on $projection.EmailConfigUUID = _Config.UUID
{
  key uuid                  as UUID,
      template_name         as TemplateName,
      @Consumption.valueHelpDefinition: [{ entity:{element: 'Language',name: 'I_Language'} }]
      language              as Language,
      email_config_uuid     as EmailConfigUUID,
      @Consumption.valueHelpDefinition: [{ entity:{element: 'value_low',name: 'ZR_EMAILCONTENTTYPE_VH'} }]
      type                  as Type,
      subject               as Subject,
      content               as Content,
      //      data_source           as DataSource,
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
