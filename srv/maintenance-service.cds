using machinepredictor from '../db/schema';

service MaintenanceService {
    entity Machines           as projection on machinepredictor.Machines;
    entity SensorReadings     as projection on machinepredictor.SensorReadings;
    entity MaintenanceAlerts  as projection on machinepredictor.MaintenanceAlerts;
}
