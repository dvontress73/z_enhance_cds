@AbapCatalog.sqlViewName: 'ZCTRAVEL_DVT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption view from /DMO/I_TRAVEL_U'
@Metadata.allowExtensions: true
define view Z_C_TRAVEL_DATA_DVT
  as select from /DMO/I_Travel_U
{

      key TravelID,
          AgencyID,
          CustomerID,
          BeginDate,
          EndDate,
          BookingFee,
          TotalPrice,
          CurrencyCode,
          Memo,
          Status,
          LastChangedAt,

    

      /* Associations */
      _Agency,
      _Booking,
      _Currency,
      _Customer
}
