@AbapCatalog.sqlViewName: 'ZV_RENTI_EP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true

define view Z_I_RENTING_EPCL
  as select from zrent_cars_epcl as Cars
  association [1]    to z_b_rem_days_epcl as _RemDays     on Cars.matricula = _RemDays.Matricula
  association [0..*] to Z_B_brands_EPCL   as _Brands      on Cars.marca = _Brands.Marca
  association [0..*] to z_b_det_costumer  as _DetCostumer on Cars.matricula = _DetCostumer.Matricula
{

  key matricula   as Matricula,
      marca       as Marca,
      modelo      as Modelo,
      color       as Color,
      motor       as Motor,
      potencia    as Potencia,
      unidad      as Unidad,
      combustible as Combustible,
      consumo     as Consumo,
      fecha_fabr  as FechaFabr,
      puertas     as Puertas,
      precio      as Precio,
      moneda      as Moneda,
      alquilado   as Alquilado,
      alq_desde   as AlqDesde,
      alq_hasta   as AlqHasta,
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
        end       as TiempoRenta,

      _Brands.Imagen,
      _DetCostumer
}
