@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency View - CDS Data Model'
@Search.searchable: true

define view entity ZSODOGAN_I_AGENCY
  as select from zsodogan_agency as _Agency

  association [0..1] to I_Country as _Country on $projection.CountryCode = _Country.Country

{
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['Name']
  key _Agency.agency_id     as AgencyID,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Semantics.text: true
      _Agency.name          as Name,

      _Agency.street        as Street,

      _Agency.postal_code   as PostalCode,

      @Search.defaultSearchElement: true
      _Agency.city          as City,

      @Consumption.valueHelpDefinition: [{entity: { name: 'I_Country', element: 'Country' } }]
      _Agency.country_code  as CountryCode,

      _Agency.phone_number  as PhoneNumber,

      _Agency.email_address as EMailAddress,

      _Agency.web_address   as WebAddress,

      /* Associations */
      _Country
}
