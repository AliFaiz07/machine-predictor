sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'mp.machines',
            componentId: 'MachinesList',
            contextPath: '/Machines'
        },
        CustomPageDefinitions
    );
});