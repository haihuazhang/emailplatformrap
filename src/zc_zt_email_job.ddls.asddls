@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_EMAIL_JOB'
define view entity ZC_ZT_EMAIL_JOB
  //  provider contract transactional_query
  as projection on ZR_ZT_EMAIL_JOB
{
  key      UUID,
           EmailConfigUUID,
           JobText,
           StartDatetime,
           EndDatetime,
           PeriodicGranularity,
           PeriodicValue,
           JobCount,
           JobName,
           LogHandle,
           LocalLastChangedAt,

           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  JobStatus            : abap.char( 1 ),
           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  JobStatusText        : abap.char( 20 ),
           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  JobStatusCriticality : abap.int1,

           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  LogStatus            : abap.char( 1 ),
           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  LogStatusText        : abap.char( 20 ),
           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  LogStatusCriticality : abap.int1,
           @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZZCL_GET_JOB_STATUS'
  virtual  ApplicationLogUrl    : abap.string( 256 ),

           _Config       : redirected to parent ZC_ZT_EMAIL_CONF,
           _JobParameter : redirected to composition child ZC_ZT_EMAIL_JOB_PA

}
