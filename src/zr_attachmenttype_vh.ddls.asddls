@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help of Email Attachment Type'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE ]
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZR_ATTACHMENTTYPE_VH
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE( p_domain_name: 'ZZDMAILATTACHMENTTYPE')
  association [0..*] to ZR_ATTACHMENTTYPE_VHT as _Text on  $projection.domain_name    = _Text.domain_name
                                           and $projection.value_position = _Text.value_position
{
       //    key ,

       @ObjectModel.text.association: '_Text'
  key  value_low,
       @Consumption.hidden: true
       domain_name,
       @Consumption.hidden: true
       value_position,
       //    value_high,
       _Text
}
