CLASS zmccm_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmccm_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zmccm_tab_art.

        it_art = VALUE #(
        ( client = sy-mandt id_art = 1 descr = 'Mini lapiceros' descr2 = 'Un estuche con mini lapiceros'
        color = 'varios' piezas = 5 stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-ohto-sharp-pencil-mini-01_600x.jpg?v=1626401542')
        ( client = sy-mandt id_art = 2 descr = 'Cubierta de libreta ' descr2 = 'Cubierta de Piel Match'
        color = 'varios' piezas = 1 stock = 20 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-cubierta-piel-cafe-match-01_600x.jpg?v=1732679666')
        ( client = sy-mandt id_art = 3 descr = 'Borrador Minimalista' descr2 = 'ForCOLOR Plastic Eraser'
        color = 'neon' piezas = 1 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-borrador-for-color-1_600x.jpg?v=1605070492')
        ( client = sy-mandt id_art = 4 descr = 'Set de stickers' descr2 = 'Set de stickers: meditar, trabajar, explorar y planear 4 Plantilllas'
        color = 'varios' piezas = 4 stock = 1 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-set-curious-sticker-set-02_600x.jpg?v=1644831759')
        ).

        INSERT zmccm_tab_art FROM TABLE @it_art.
        if sy-subrc = 0.
            out->write( 'Insert succedful' ).
          ELSE.
          out->write( 'Insert WRONG' ).
        endif.



  ENDMETHOD.
ENDCLASS.
