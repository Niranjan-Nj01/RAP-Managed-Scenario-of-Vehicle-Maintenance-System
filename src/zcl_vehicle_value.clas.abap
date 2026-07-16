CLASS zcl_vehicle_value DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vehicle_value IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA : it_vehicle TYPE TABLE of ZFLT_VEHICLE_NJS,
         it_maint TYPE table of ZZFLT_MAINT_LOG,
         it_mainttype type table of ZFLT_MAINTYP_NJS.

         it_vehicle = value #(
         ( vehicleuuid = '1' vin = 'VIN001' modelname  = 'Volvo FH16'  lastservicedate = '20260601' totalcost = '5000.00' currencycode = 'INR' )
          ( vehicleuuid = '2' vin = 'VIN002' modelname  = 'Audi A6'  lastservicedate = '20260601' totalcost = '15000.00' currencycode = 'INR' )
          ( vehicleuuid = '3' vin = 'VIN003' modelname  = 'BMW X7'  lastservicedate = '20260601' totalcost = '20000.00' currencycode = 'INR' )
          ( vehicleuuid = '4' vin = 'VIN004' modelname  = 'BENZ C350'  lastservicedate = '20260601' totalcost = '25000.00' currencycode = 'INR' )
          ( vehicleuuid = '5' vin = 'VIN005' modelname  = 'ROLLS ROYSE BEAST100'  lastservicedate = '20260601' totalcost = '100000.00' currencycode = 'INR' )
          ).

           INSERT ZFLT_VEHICLE_NJS FROM TABLE @it_vehicle.

           it_maint = value #(
           ( loguuid = '101' vehicleuuid = '1' maintdate = '20260601' mainttype = 'oil change' cost = '1500.00' currencycode = 'INR' status = 'completed' )
           ( loguuid = '102' vehicleuuid = '1' maintdate = '20260602' mainttype = 'Tire Rotation' cost = '2000.00' currencycode = 'INR' status = 'In Progress' )
           ( loguuid = '103' vehicleuuid = '1' maintdate = '20260603' mainttype = 'Engine Check' cost = '2500.00' currencycode = 'INR' status = 'New' )
           ( loguuid = '101' vehicleuuid = '2' maintdate = '20260604' mainttype = 'oil change' cost = '500.00' currencycode = 'INR' status = 'completed' )
           ( loguuid = '102' vehicleuuid = '2' maintdate = '20260605' mainttype = 'Tire Rotation' cost = '1000.00' currencycode = 'INR' status = 'In Progress' )
           ( loguuid = '101' vehicleuuid = '3' maintdate = '20260606' mainttype = 'Engine Check' cost = '1500.00' currencycode = 'INR' status = 'New' )
           ( loguuid = '102' vehicleuuid = '3' maintdate = '20260607' mainttype = 'oil change' cost = '2000.00' currencycode = 'INR' status = 'completed' )
           ( loguuid = '101' vehicleuuid = '4' maintdate = '20260608' mainttype = 'Tire Rotation' cost = '2500.00' currencycode = 'INR' status = 'In Progress' )
           ( loguuid = '101' vehicleuuid = '5' maintdate = '20260609' mainttype = 'Engine Check' cost = '3500.00' currencycode = 'INR' status = 'New' )
            ).

            INSERT ZZFLT_MAINT_LOG FROM TABLE @it_maint.
*
* it_maint = value #(
*           ( loguuid = '103' vehicleuuid = '3' maintdate = '20260610' mainttype = 'Brake Inspection' cost = '1500.00' currencycode = 'INR' status = 'completed' )
*           ( loguuid = '102' vehicleuuid = '4' maintdate = '20260611' mainttype = 'Brake Inspection' cost = '2000.00' currencycode = 'INR' status = 'In Progress' )
*           ( loguuid = '102' vehicleuuid = '5' maintdate = '20260612' mainttype = 'Brake Inspectionk' cost = '2500.00' currencycode = 'INR' status = 'New' )
*            ).
*            INSERT ZZFLT_MAINT_LOG FROM TABLE @it_maint.
*            it_mainttype = value #(
*            ( mainttype = 'oil change' )
*            ( mainttype = 'Tire Rotation' )
*            ( mainttype = 'Engine Check' )
*            ( mainttype = 'Brake Inspection' )
*             ).
*
*             INSERT ZFLT_MAINTYP_NJS FROM TABLE @it_mainttype.

            out->write( 'value inserted successfully' ).

* DATA: lt_vehicle TYPE TABLE OF zflt_vehicle_njs.

*SELECT *
*  FROM zflt_vehicle_njs
*  INTO TABLE @it_vehiclee.

*cl_demo_output=>display( it_vehicle ).

*DELETE FROM zflt_vehicle_njs.
*
*COMMIT WORK.
*DELETE FROM ZZFLT_MAINT_LOG.
*
*COMMIT WORK.
*
*out->write( 'All records deleted' ).



  ENDMETHOD.
ENDCLASS.
