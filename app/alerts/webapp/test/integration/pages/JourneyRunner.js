sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"mp/alerts/test/integration/pages/MaintenanceAlertsList",
	"mp/alerts/test/integration/pages/MaintenanceAlertsObjectPage"
], function (JourneyRunner, MaintenanceAlertsList, MaintenanceAlertsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('mp/alerts') + '/test/flpSandbox.html#mpalerts-tile',
        pages: {
			onTheMaintenanceAlertsList: MaintenanceAlertsList,
			onTheMaintenanceAlertsObjectPage: MaintenanceAlertsObjectPage
        },
        async: true
    });

    return runner;
});

