xquery version "3.0";

declare option exist:serialize "method=html media-type=text/html";

declare function local:translate( $name, $section ){
    let $d := doc( '/db/topicos/ubl-idd/UBL-IDD-2.1-ES.xml' )
    let $term := $d//section[@xml:id = $section]/entry[@xml:id = $name]/business-terms/text()
    
    let $r :=  if( empty($term) ) then 
        local:translate($name, 'UBL-CommonLibrary-2.1')
    else
        $term[1]
        
    return $r
};

declare function local:show-element( $e ){
    <div style="margin-left:5ex" > 
        {(: Muestra el nombre del elemento y su texto :)
         local:translate($e/local-name(), "UBL-DespatchAdvice-2.1") }: { $e/text() } 
        {(: Mostrar los hijos del elemento :)
        
            for $child in $e/*
                return local:show-element( $child )
        }
    </div>
};

(: Obtener el parametro orden para saber que orden piden :)
let $id := request:get-parameter('despacho', '565899')

(: Buscar el documento respectivo :)
let $despacho := /*:DespatchAdvice[*:ID = $id]

return 
    <html>
        <head><title>Albarán de Entrega</title></head>
        <body>
            <h1>Albarán de Entrega # {$despacho/*:ID}</h1>
            { local:show-element($despacho) }
        </body>
    </html>    