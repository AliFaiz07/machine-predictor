using MaintenanceService as service from '../../srv/maintenance-service';

annotate service.MaintenanceAlerts with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Label : 'ID', Value : ID },
            { $Type : 'UI.DataField', Label : 'Machine', Value : machine_ID },
            { $Type : 'UI.DataField', Label : 'Risk Score', Value : riskScore },
            { $Type : 'UI.DataField', Label : 'Status', Value : status },
            { $Type : 'UI.DataField', Label : 'Created At', Value : createdAt },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'ID', Value : ID },
        { $Type : 'UI.DataField', Label : 'Machine', Value : machine_ID },
        { $Type : 'UI.DataField', Label : 'Risk Score', Value : riskScore },
        { $Type : 'UI.DataField', Label : 'Status', Value : status },
        { $Type : 'UI.DataField', Label : 'Created At', Value : createdAt },
    ],
);
