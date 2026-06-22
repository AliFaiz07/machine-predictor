import requests
import json
from datetime import datetime

# Your deployed CAP API base URL
BASE_URL = "https://0a0e6658trial-dev-machine-predictor-srv.cfapps.ap21.hana.ondemand.com/odata/v4/maintenance"

def get_sensor_readings():
    """Fetch all sensor readings from CAP OData API"""
    url = f"{BASE_URL}/SensorReadings"
    response = requests.get(url)
    data = response.json()
    return data.get("value", [])

def calculate_risk(temperature, vibration):
    """Simple anomaly detection logic"""
    if temperature > 90 or vibration > 2.0:
        return "HIGH", 0.9
    elif temperature > 75 or vibration > 1.2:
        return "MEDIUM", 0.6
    else:
        return "LOW", 0.2

def create_alert(machine_id, risk_status, risk_score, alert_id):
    """POST a MaintenanceAlert to CAP API"""
    url = f"{BASE_URL}/MaintenanceAlerts"
    payload = {
        "ID": alert_id,
        "machine_ID": machine_id,
        "riskScore": risk_score,
        "status": risk_status,
        "createdAt": datetime.utcnow().strftime("%Y-%m-%dT%H:%M:%SZ")
    }
    response = requests.post(url, json=payload)
    return response.status_code, response.json()

def run():
    print("Fetching sensor readings...")
    readings = get_sensor_readings()
    print(f"Found {len(readings)} readings")

    alert_id = 1
    for reading in readings:
        machine_id = reading.get("machine_ID")
        temperature = float(reading.get("temperature", 0))
        vibration = float(reading.get("vibration", 0))

        status, score = calculate_risk(temperature, vibration)

        print(f"Machine {machine_id}: Temp={temperature}, Vibration={vibration} → {status} (score={score})")

        if status in ["HIGH", "MEDIUM"]:
            code, result = create_alert(machine_id, status, score, alert_id)
            print(f"  Alert created: HTTP {code}")
            alert_id += 1

    print("Done.")

if __name__ == "__main__":
    run()
