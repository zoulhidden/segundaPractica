xquery version "3.0";

<d:DespatchAdvice xmlns:d="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">
    <cbc:UBLVersionID>2.0</cbc:UBLVersionID>
    <cbc:ID>
        {
            let $last := max(/*:DespatchAdvice/*:ID)
            return number($last) + 1
        }
    </cbc:ID>
    <cbc:CopyIndicator>false</cbc:CopyIndicator>
    <cbc:UUID>{ util:uuid() }</cbc:UUID>
    <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    <cbc:Note></cbc:Note>
    <cac:OrderReference>
        <cbc:ID></cbc:ID>
        <cbc:SalesOrderID></cbc:SalesOrderID>
        <cbc:UUID></cbc:UUID>
        <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    </cac:OrderReference>
    <cac:DespatchSupplierParty>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:BuildingName></cbc:BuildingName>
                <cbc:BuildingNumber></cbc:BuildingNumber>
                <cbc:CityName></cbc:CityName>
                <cbc:PostalZone></cbc:PostalZone>
                <cbc:CountrySubentity></cbc:CountrySubentity>
                <cac:AddressLine>
                    <cbc:Line></cbc:Line>
                </cac:AddressLine>
                <cac:Country>
                    <cbc:IdentificationCode></cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:Contact>
                <cbc:Name></cbc:Name>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:DespatchSupplierParty>
    <cac:DeliveryCustomerParty>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:BuildingName></cbc:BuildingName>
                <cbc:BuildingNumber></cbc:BuildingNumber>
                <cbc:CityName></cbc:CityName>
                <cbc:PostalZone></cbc:PostalZone>
                <cbc:CountrySubentity></cbc:CountrySubentity>
                <cac:AddressLine>
                    <cbc:Line></cbc:Line>
                </cac:AddressLine>
                <cac:Country>
                    <cbc:IdentificationCode></cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:Contact>
                <cbc:Name></cbc:Name>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:DeliveryCustomerParty>
    <cac:Shipment>
        <cbc:ID></cbc:ID>
        <cac:Consignment>
            <cbc:ID></cbc:ID>
        </cac:Consignment>
        <cac:Delivery>
            <cac:DeliveryAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:BuildingName></cbc:BuildingName>
                <cbc:BuildingNumber></cbc:BuildingNumber>
                <cbc:CityName></cbc:CityName>
                <cbc:PostalZone></cbc:PostalZone>
                <cbc:CountrySubentity></cbc:CountrySubentity>
                <cac:AddressLine>
                    <cbc:Line></cbc:Line>
                </cac:AddressLine>
                <cac:Country>
                    <cbc:IdentificationCode></cbc:IdentificationCode>
                </cac:Country>
            </cac:DeliveryAddress>
            <cac:RequestedDeliveryPeriod>
                <cbc:StartDate>{ current-date() }</cbc:StartDate>
                <cbc:StartTime>{ current-time() }</cbc:StartTime>
                <cbc:EndDate></cbc:EndDate>
                <cbc:EndTime></cbc:EndTime>
            </cac:RequestedDeliveryPeriod>
        </cac:Delivery>
    </cac:Shipment>
    <cac:DespatchLine>
        <cbc:ID></cbc:ID>
        <cbc:Note></cbc:Note>
        <cbc:DeliveredQuantity unitCode="KGM"></cbc:DeliveredQuantity>
        <cbc:BackorderQuantity unitCode="KGM"></cbc:BackorderQuantity>
        <cbc:BackorderReason></cbc:BackorderReason>
        <cac:OrderLineReference>
            <cbc:LineID></cbc:LineID>
            <cbc:SalesOrderLineID></cbc:SalesOrderLineID>
            <cac:OrderReference>
                <cbc:ID></cbc:ID>
                <cbc:SalesOrderID></cbc:SalesOrderID>
                <cbc:UUID></cbc:UUID>
                <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
            </cac:OrderReference>
        </cac:OrderLineReference>
        <cac:Item>
            <cbc:Description></cbc:Description>
        </cac:Item>
    </cac:DespatchLine>
</d:DespatchAdvice>