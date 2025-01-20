@AbapCatalog.sqlViewName: 'ZMCCM_V_CDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Articulos Arte'
@Metadata.ignorePropagatedAnnotations: true
define view ZMCCM_CDS_ART_001 as select from zmccm_tab_art
{
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
        // 0 neutral grey
        // 1 negative red
        // 2 critical yellow
        // 3 positive green
        case
        when stock = 0 then 0
        when stock between 1 and 10 then 1
        when stock between 11 and 99 then 2
        when stock >= 100 then 3
        else 0
        end as status    
    
}
