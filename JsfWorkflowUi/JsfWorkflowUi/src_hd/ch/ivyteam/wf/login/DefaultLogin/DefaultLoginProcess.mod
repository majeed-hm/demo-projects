[Ivy]
[>Created: Fri May 09 10:19:21 CEST 2014]
13FC77725A369A9D 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DefaultLoginProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogEnd f6 '' #zField
Ds0 @RichDialogMethodStart f3 '' #zField
Ds0 @PushWFArc f7 '' #zField
>Proto Ds0 Ds0 DefaultLoginProcess #zField
Ds0 f0 guid 13FC77725B344C87 #txt
Ds0 f0 type ch.ivyteam.wf.login.DefaultLogin.DefaultLoginData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f0 -1|-1|-9671572 #nodeStyle
Ds0 f1 type ch.ivyteam.wf.login.DefaultLogin.DefaultLoginData #txt
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f1 -1|-1|-9671572 #nodeStyle
Ds0 f2 expr out #txt
Ds0 f2 109 64 211 64 #arcP
Ds0 f6 type ch.ivyteam.wf.login.DefaultLogin.DefaultLoginData #txt
Ds0 f6 guid 13FC7792110B2127 #txt
Ds0 f6 211 115 26 26 0 12 #rect
Ds0 f6 @|RichDialogEndIcon #fIcon
Ds0 f6 -1|-1|-9671572 #nodeStyle
Ds0 f3 guid 13FCC7D209E229C3 #txt
Ds0 f3 type ch.ivyteam.wf.login.DefaultLogin.DefaultLoginData #txt
Ds0 f3 method close() #txt
Ds0 f3 disableUIEvents false #txt
Ds0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f3 outParameterDecl '<> result;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 115 26 26 -19 12 #rect
Ds0 f3 @|RichDialogMethodStartIcon #fIcon
Ds0 f3 -1|-1|-9671572 #nodeStyle
Ds0 f7 expr out #txt
Ds0 f7 109 128 211 128 #arcP
>Proto Ds0 .type ch.ivyteam.wf.login.DefaultLogin.DefaultLoginData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
