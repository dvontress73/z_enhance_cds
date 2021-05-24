@AbapCatalog.sqlViewName: 'ZCTRAVEL_DVT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption view from /DMO/I_TRAVEL_U'
@Metadata.allowExtensions: true
@Search.searchable: true
define view Z_C_TRAVEL_DATA_DVT
  as select from /DMO/I_Travel_U
{

  key TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Semantics.currencyCode
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      Memo,
      Status,
      LastChangedAt,


      /* Associations */
      _Agency,
      _Booking,
      _Currency,
      _Customer
}
