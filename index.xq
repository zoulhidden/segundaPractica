declare option exist:serialize "method=html media-type=text/html";

let $ordenes := collection('/db/despachos/data')/*:DespatchAdvice

return
    <html>
        <head><title>Lista de Despachos</title></head>
        <body>
            <h1> Despachos </h1>
            
            <table border="1">
                <thead><tr><td><b>Numero</b></td><td><b>Cliente</b></td><td><b>Cantidad Entregada</b></td></tr></thead>
                <tbody>
                    {
                    for $i in $ordenes
                        return <tr>
                            <td>
                            <a href="despacho.xq?despacho={$i/*:ID/text()}"> {$i/*:ID/text()} </a>
                            </td>
                            <td>
                                {$i/*:DeliveryCustomerParty//*:PartyName}
                            </td>
                            <td>
                                {$i//*:DeliveredQuantity}
                            </td>
                            <td>
                                <a href = "edit.xml?despacho={$i/*:ID/text()}"> Editar </a>
                            </td>
                        </tr>
                    }
                </tbody>
            </table>
            <a href = "new.xml"> Nuevo Despacho </a>
        </body>
    </html>