//@ui5-bundle purchaseorder/Component-preload.js
sap.ui.require.preload({
	"purchaseorder/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("purchaseorder.Component",{metadata:{manifest:"json"}})});
},
	"purchaseorder/i18n/i18n.properties":'# This is the resource bundle for purchaseorder\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Purchase Order\n\n#YDES: Application description\nappDescription=An SAP Fiori application.',
	"purchaseorder/manifest.json":'{"_version":"1.59.0","sap.app":{"id":"purchaseorder","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.14.4","toolsId":"3c521846-47ae-41e7-97ff-f39bbb1c0f34"},"dataSources":{"mainService":{"uri":"odata/v4/CatalogService/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"purchaseorder-inbound":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"purchaseorder","action":"display","title":"{{flpTitle}}","subTitle":"{{flpSubtitle}}","icon":"sap-icon://question-mark"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.127.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"purchaseorder.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"POsList","target":"POsList"},{"pattern":"POs({key}):?query:","name":"POsObjectPage","target":"POsObjectPage"},{"pattern":"POs({key})/Items({key2}):?query:","name":"POItemsObjectPage","target":"POItemsObjectPage"}],"targets":{"POsList":{"type":"Component","id":"POsList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/POs","variantManagement":"Page","navigation":{"POs":{"detail":{"route":"POsObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"ResponsiveTable"}}}}}},"POsObjectPage":{"type":"Component","id":"POsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/POs","navigation":{"Items":{"detail":{"route":"POItemsObjectPage"}}}}}},"POItemsObjectPage":{"type":"Component","id":"POItemsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/POs/Items"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"capmproj"}}'
});
//# sourceMappingURL=Component-preload.js.map