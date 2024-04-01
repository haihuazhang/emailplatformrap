@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Configuration of Email'
define root view entity ZR_ZT_EMAIL_CONF
  as select from zzt_email_conf as Config
  composition [0..*] of ZR_ZT_EMAIL_TMPL as _Content
  composition [0..*] of ZR_ZT_EMAIL_CONF_R as _Recipent
  composition [0..*] of ZR_ZT_EMAIL_CONF_A as _Attachment
  composition [0..*] of ZR_ZT_EMAIL_JOB as _Job
  
{
  key uuid as UUID,
  config_name as ConfigName,
  
  @Consumption.valueHelpDefinition: [{ entity:{element: 'ReleasedObjectName',name: 'ZR_ReleasedCDSForDE'},
                                       useForValidation: true }]
  data_source as DataSource,
  @Consumption.valueHelpDefinition: [{ entity:{element: 'value_low',name: 'ZR_TRIGGERTYPE_VH'},
                                       useForValidation: true }]
  started_way as StartedWay,
  has_attachment as HasAttachment,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  
  _Content,
  _Recipent,
  _Attachment,
  _Job
  
}
