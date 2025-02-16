@AbapCatalog.sqlViewName: 'ZV_DETAIL_COS_EP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Costumers'
@Metadata.allowExtensions: true
define view z_b_det_costumer
  as select from zrent_costumer_e
{
  key doc_id    as Id,
      matricula as Matricula,
      nombre    as Nombre,
      apellido  as Apellido,
      email     as Email,
      cntr_type as CntrType
}
