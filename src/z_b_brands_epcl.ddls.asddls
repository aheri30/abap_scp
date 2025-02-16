@AbapCatalog.sqlViewName: 'ZV_BRANDS_EPCL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_brands_EPCL
  as select from zrent_brands_epc
{
  key marca as Marca,
      url   as Imagen
}
