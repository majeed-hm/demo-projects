[Ivy]
[>Created: Fri Apr 28 15:01:38 CEST 2017]
157E7BB4142F9EFB 3.20 #module
>Proto >Proto Collection #zClass
Ss0 AdministratorsComponentProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessEnd f12 '' #zField
Ss0 @RichDialogProcessStart f16 '' #zField
Ss0 @GridStep f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @GridStep f2 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @RichDialogProcessStart f4 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @RichDialogMethodStart f5 '' #zField
Ss0 @GridStep f13 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @RichDialogProcessStart f6 '' #zField
Ss0 @RichDialogMethodStart f14 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @GridStep f22 '' #zField
Ss0 @PushWFArc f23 '' #zField
Ss0 @PushWFArc f8 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @PushWFArc f10 '' #zField
>Proto Ss0 Ss0 AdministratorsComponentProcess #zField
Ss0 f0 guid 157E7518F76CF891 #txt
Ss0 f0 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axon.ivy.engine.config.SystemDatabaseSettings settings> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.administratorManager=param.settings.getAdministratorManager();
out.connectionInfo=param.settings.getConnectionInfo();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f12 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f12 339 211 26 26 0 12 #rect
Ss0 f12 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 guid 159A6C6401C7533F #txt
Ss0 f16 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f16 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f16 actionTable 'out=in;
' #txt
Ss0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNewAdmin</name>
    </language>
</elementInfo>
' #txt
Ss0 f16 83 179 26 26 -40 12 #rect
Ss0 f16 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 actionCode 'import ch.ivyteam.ivy.security.Administrator;

in.administratorManager.addAdministrator(new Administrator(in.newAdmin.name, in.newAdmin.fullname, in.newAdmin.email, in.newAdmin.password));
in.newAdmin.email ="";
in.newAdmin.fullname ="";
in.newAdmin.name ="";
in.newAdmin.password ="";' #txt
Ss0 f19 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new administrator</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 160 170 128 44 -61 -8 #rect
Ss0 f19 @|StepIcon #fIcon
Ss0 f20 expr out #txt
Ss0 f20 109 192 160 192 #arcP
Ss0 f2 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 actionCode in.administratorManager.storeAdministrators(); #txt
Ss0 f2 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Admins</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 168 234 112 44 -36 -8 #rect
Ss0 f2 @|StepIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 280 256 352 237 #arcP
Ss0 f9 1 352 256 #addKink
Ss0 f9 0 0.6774573935997311 0 0 #arcLabel
Ss0 f3 expr out #txt
Ss0 f3 109 64 339 64 #arcP
Ss0 f4 guid 15BB3F97AA56B3E8 #txt
Ss0 f4 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f4 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveAdmins</name>
    </language>
</elementInfo>
' #txt
Ss0 f4 83 243 26 26 -34 12 #rect
Ss0 f4 @|RichDialogProcessStartIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 109 256 168 256 #arcP
Ss0 f7 0 0.6122748645587978 0 0 #arcLabel
Ss0 f5 guid 15BB40698B2492D9 #txt
Ss0 f5 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f5 method removeAdmin(ch.ivyteam.ivy.security.Administrator) #txt
Ss0 f5 disableUIEvents false #txt
Ss0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.Administrator selectedAdmin> param = methodEvent.getInputArguments();
' #txt
Ss0 f5 inParameterMapAction 'out.selectedAdministrator=param.selectedAdmin;
' #txt
Ss0 f5 outParameterDecl '<> result;
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeAdmin(Administrator)</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 83 115 26 26 -78 15 #rect
Ss0 f5 @|RichDialogMethodStartIcon #fIcon
Ss0 f13 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 actionCode 'out.administratorManager.removeAdministrator(in.#selectedAdministrator);' #txt
Ss0 f13 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Remove administrator</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 160 106 128 44 -61 -8 #rect
Ss0 f13 @|StepIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 109 128 160 128 #arcP
Ss0 f6 guid 15BB412320FE8D41 #txt
Ss0 f6 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f6 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveEditedAdmin</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 83 307 26 26 -48 12 #rect
Ss0 f6 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 guid 15BB470138AAAB40 #txt
Ss0 f14 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f14 method editAdministrator(ch.ivyteam.ivy.security.Administrator) #txt
Ss0 f14 disableUIEvents false #txt
Ss0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.Administrator admin> param = methodEvent.getInputArguments();
' #txt
Ss0 f14 inParameterMapAction 'out.selectedAdministrator=param.admin;
' #txt
Ss0 f14 inActionCode 'out.editAdmin.email=param.admin.eMailAddress;
out.editAdmin.fullname=param.admin.getFullName();
out.editAdmin.name=param.admin.getName();
out.editAdmin.password="";' #txt
Ss0 f14 outParameterDecl '<> result;
' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editAdministrator(Administrator)</name>
        <nameStyle>32,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 83 371 26 26 -87 15 #rect
Ss0 f14 @|RichDialogMethodStartIcon #fIcon
Ss0 f15 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f15 339 371 26 26 0 12 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f18 109 384 339 384 #arcP
Ss0 f22 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f22 actionTable 'out=in;
' #txt
Ss0 f22 actionCode 'in.selectedAdministrator.setEMailAddress(in.editAdmin.email);
in.selectedAdministrator.setFullName(in.editAdmin.fullname);
if(in.editAdmin.password != "")
{
	in.selectedAdministrator.changePassword(in.editAdmin.password);
}' #txt
Ss0 f22 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save edited Administrator</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f22 152 298 144 44 -69 -8 #rect
Ss0 f22 @|StepIcon #fIcon
Ss0 f23 expr out #txt
Ss0 f23 109 320 152 320 #arcP
Ss0 f8 expr out #txt
Ss0 f8 288 128 352 211 #arcP
Ss0 f8 1 352 128 #addKink
Ss0 f8 0 0.7435699274302391 0 0 #arcLabel
Ss0 f11 expr out #txt
Ss0 f11 288 192 352 211 #arcP
Ss0 f11 1 352 192 #addKink
Ss0 f11 1 0.8277487134754421 0 0 #arcLabel
Ss0 f10 expr out #txt
Ss0 f10 296 320 352 237 #arcP
Ss0 f10 1 352 320 #addKink
Ss0 f10 0 0.8150402304412877 0 0 #arcLabel
>Proto Ss0 .type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f16 mainOut f20 tail #connect
Ss0 f20 head f19 mainIn #connect
Ss0 f2 mainOut f9 tail #connect
Ss0 f9 head f12 mainIn #connect
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f4 mainOut f7 tail #connect
Ss0 f7 head f2 mainIn #connect
Ss0 f5 mainOut f17 tail #connect
Ss0 f17 head f13 mainIn #connect
Ss0 f14 mainOut f18 tail #connect
Ss0 f18 head f15 mainIn #connect
Ss0 f6 mainOut f23 tail #connect
Ss0 f23 head f22 mainIn #connect
Ss0 f13 mainOut f8 tail #connect
Ss0 f8 head f12 mainIn #connect
Ss0 f19 mainOut f11 tail #connect
Ss0 f11 head f12 mainIn #connect
Ss0 f22 mainOut f10 tail #connect
Ss0 f10 head f12 mainIn #connect
