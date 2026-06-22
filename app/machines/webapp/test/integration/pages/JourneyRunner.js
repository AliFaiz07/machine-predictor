sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"mp/machines/test/integration/pages/MachinesList",
	"mp/machines/test/integration/pages/MachinesObjectPage"
], function (JourneyRunner, MachinesList, MachinesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('mp/machines') + '/test/flpSandbox.html#mpmachines-tile',
        pages: {
			onTheMachinesList: MachinesList,
			onTheMachinesObjectPage: MachinesObjectPage
        },
        async: true
    });

    return runner;
});

