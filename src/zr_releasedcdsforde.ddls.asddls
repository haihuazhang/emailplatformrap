@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Released CDS for Developer Extensibility'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE ]
@ObjectModel.dataCategory: #VALUE_HELP
define root view entity ZR_ReleasedCDSForDE as select from I_APIsForCloudDevelopment
//composition of target_data_source_name as _association_name
{
    key ReleasedObjectType,
    key ReleasedObjectName,
    key ObjectDirectoryType,
    key ObjectDirectoryName,
    ReleaseState,
    ReleaseStateDescription
//    _association_name // Make association public
}
 where ReleasedObjectType = 'CDS_STOB'
