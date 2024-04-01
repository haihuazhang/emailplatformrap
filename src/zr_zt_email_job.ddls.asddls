@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Job'
define view entity ZR_ZT_EMAIL_JOB
  as select from zzt_email_job
  association to parent ZR_ZT_EMAIL_CONF   as _Config on $projection.EmailConfigUUID = _Config.UUID

  composition [0..*] of ZR_ZT_EMAIL_JOB_PA as _JobParameter
{
  key uuid                                 as UUID,
      email_config_uuid                    as EmailConfigUUID,
      job_text                             as JobText,
      start_datetime                       as StartDatetime,
      end_datetime                         as EndDatetime,
      
      @Consumption.valueHelpDefinition: [{ entity:{element: 'value_low',name: 'ZR_PERIODICGRANULARITY_VH'} }]
      periodic_granularity                 as PeriodicGranularity,
      periodic_value                       as PeriodicValue,
      jobcount                             as JobCount,
      jobname                              as JobName,
      //  loghandle as Loghandle,
      cast( loghandle as abap.char( 22 ) ) as LogHandle,
      @Semantics.user.createdBy: true
      created_by                           as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at                           as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by                      as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at                      as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at                as LocalLastChangedAt,
      _Config,
      _JobParameter

}
