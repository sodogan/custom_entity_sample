@EndUserText.label: 'Custom entity on /dmo/travel'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_TRAVEL_CUSTOM_HANDLER'
define root custom entity ZSODOGAN_I_TRAVEL_U
//with parameters p_status: /dmo/overall_status
{
//    All fields are from table: /dmo/travel
  key Travel_ID     : abap.numc( 8 );
      Agency_ID     : abap.numc( 6 );
      Customer_ID   : abap.numc( 6 );
      Begin_Date    : abap.dats;
      End_Date      : abap.dats;
      Booking_Fee   : abap.dec( 17, 3 );
      Total_Price   : abap.dec( 17, 3 );
      Currency_Code : abap.cuky;
      Status        : abap.char( 1 );
      Last_Changed_At : timestampl;
      _Agency         : association [1] to zsodogan_I_AGENCY on  _Agency.AgencyID = $projection.Agency_ID;
      _Booking        : composition [1..*] of ZSODOGAN_I_BOOKING;
 
}
