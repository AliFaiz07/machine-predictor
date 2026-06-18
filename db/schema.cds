namespace machinepredictor;

entity Machines {
    key ID       : Integer;
        name     : String;
        type     : String;
        location : String;
}

entity SensorReadings {
    key ID          : Integer;
        machine     : Association to Machines;
        temperature : Decimal;
        vibration   : Decimal;
        timestamp   : DateTime;
}

entity MaintenanceAlerts {
    key ID         : Integer;
        machine    : Association to Machines;
        riskScore  : Decimal;
        status     : String;
        createdAt  : DateTime;
}
