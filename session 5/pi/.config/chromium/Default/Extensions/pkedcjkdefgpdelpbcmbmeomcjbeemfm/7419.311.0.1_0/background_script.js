'use strict';fb("mr.TestProvider");var oz,Ny,pz=fb("mr.Init"),qz=function(a){void 0!==a&&pz.info("Using the "+(a?"Views (Harmony)":"WebUI")+" dialog.")};$r().init();oz=new ub("MediaRouter.Provider.WakeDuration");Ny=new bz;
var rz=(new Promise(function(a,b){switch(window.location.host){case "enhhojjnijigcajfphajepfemndkmdlo":a();break;case "pkedcjkdefgpdelpbcmbmeomcjbeemfm":chrome.management.get("enhhojjnijigcajfphajepfemndkmdlo",function(c){chrome.runtime.lastError||!c.enabled?a():b(Error("Dev extension is enabled"))});break;default:b(Error("Unknown extension id"))}})).then(function(){return chrome.mojoPrivate&&chrome.mojoPrivate.requireAsync?new Promise(function(a){chrome.mojoPrivate.requireAsync("media_router_bindings").then(function(b){mojo=b.getMojoExports&&
b.getMojoExports();b.start().then(function(c){a({mrService:b,mrInstanceId:c.instance_id||c,mrConfig:c.config})})})}):Promise.reject(Error("No mojo service loaded"))}).then(function(a){if(!a.mrService)throw Error("Failed to get MR service");var b=a.mrInstanceId;if(!b)throw Error("Failed to get MR instance ID.");pz.info("MR instance ID: "+b);qz(a.mrConfig.use_views_dialog);var c=a.mrService;if(!Ny)throw Error("providerManager not initialized.");c.setHandlers(Ny);Pl(b)&&(oz.b="MediaRouter.Provider.FirstWakeDuration");
chrome.runtime.onSuspend.addListener(oz.end.bind(oz));Tl(b);cs();b=My();window.addEventListener("unhandledrejection",function(a){a=a.reason;a.stack||(a=Error(a));pz.error("Unhandled promise rejection.",a)});Ny.initialize(c,b,a.mrConfig)}).then(void 0,function(a){pz.H(a.message);throw a;});[].concat(m([Ly(),Iy()].concat(m(qp()),m([xv(),tv()])))).forEach(function(a){Nl(a)});Ly().addListener();Iy().addListener();chrome.runtime.onStartup.addListener(function(){});rz.then(void 0,function(){return window.close()});
