# custom_entity_sample

Custom Entity Sample

FROM ODATA:
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels

Lets do expand
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels?$expand=_Agency

And also more expand..
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels?$expand=_Agency($expand=_Country)

Lets do a filter
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels?$expand=_Agency&$filter=Status eq ‘P’

Get the composition on bookings

https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels?$expand=_Booking

Lets do paging
Paging uses top and skip
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Travels?$top=2&$skip=3

To get all the bookings
https://45f514af-f57b-4579-990b-8b70ea328491.abap-web.us10.hana.ondemand.com/sap/opu/odata4/sap/zsb_travel_custom/srvd/sap/zsd_travel_custom/0001/Bookings
