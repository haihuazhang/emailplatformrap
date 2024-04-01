@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED JobFilter'
define view entity ZR_ZT_EMAIL_JOB_PA
  as select from zzt_email_job_pa
  association        to parent ZR_ZT_EMAIL_JOB as _Job    on $projection.JobConfigUUID = _Job.UUID
  association [1..1] to ZR_ZT_EMAIL_CONF       as _Config on $projection.EmailConfigUUID = _Config.UUID
{
  key uuid                  as UUID,
      email_config_uuid     as EmailConfigUUID,
      job_config_uuid       as JobConfigUUID,
      parameter_name        as ParameterName,
      parameter_operator    as ParameterOperator,
      parameter_low_value   as ParameterLowValue,
      parameter_high_value  as ParameterHighValue,
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
      _Job,
      _Config

}
