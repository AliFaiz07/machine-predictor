using MaintenanceService as service from '../../srv/maintenance-service';
annotate service.SensorReadings with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'machine_ID',
                Value : machine_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'temperature',
                Value : temperature,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vibration',
                Value : vibration,
            },
            {
                $Type : 'UI.DataField',
                Label : 'timestamp',
                Value : timestamp,
            },
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
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'machine_ID',
            Value : machine_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'temperature',
            Value : temperature,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vibration',
            Value : vibration,
        },
        {
            $Type : 'UI.DataField',
            Label : 'timestamp',
            Value : timestamp,
        },
    ],
);

annotate service.SensorReadings with {
    machine @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Machines',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : machine_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'type',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'location',
            },
        ],
    }
};

