sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"mp/sensors/test/integration/pages/SensorReadingsList",
	"mp/sensors/test/integration/pages/SensorReadingsObjectPage"
], function (JourneyRunner, SensorReadingsList, SensorReadingsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('mp/sensors') + '/test/flpSandbox.html#mpsensors-tile',
        pages: {
			onTheSensorReadingsList: SensorReadingsList,
			onTheSensorReadingsObjectPage: SensorReadingsObjectPage
        },
        async: true
    });

    return runner;
});

