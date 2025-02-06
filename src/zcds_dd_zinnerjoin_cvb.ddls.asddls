@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA DEFINITION INNER JOIN CVB'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCDS_DD_ZINNERJOIN_CVB
  as select from zpaciente_mmn as pa
    inner join   zcentro_hosp_mmn    as ce on ce.id_centro = pa.id_centro
{
key ce.id_centro as IdCentro,
key pa.id_paciente as IdPaciente,
ce.nombre_centro as NombreCentro,
ce.poblacion as Poblacion,
ce.provincia as Provincia,
ce.email_centro as EmailCentro,

pa.nombre_paciente as NombrePaciente,
pa.apellido_paciente as ApellidoPaciente,


pa.telefono as Telefono,
pa.email_paciente as EmailPaciente

}
