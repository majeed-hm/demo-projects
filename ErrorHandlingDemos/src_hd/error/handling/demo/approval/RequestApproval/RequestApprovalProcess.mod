[Ivy]
[>Created: Thu Oct 22 15:25:07 CEST 2015]
150850F930AF7EA6 3.18 #module
>Proto >Proto Collection #zClass
Rs0 RequestApprovalProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @RichDialogEnd f4 '' #zField
Rs0 @RichDialogProcessStart f6 '' #zField
Rs0 @RichDialogProcessStart f9 '' #zField
Rs0 @PushWFArc f12 '' #zField
Rs0 @ErrorEnd f5 '' #zField
Rs0 @PushWFArc f8 '' #zField
>Proto Rs0 Rs0 RequestApprovalProcess #zField
Rs0 f0 guid 150850F931993F87 #txt
Rs0 f0 type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
Rs0 f0 method start(error.handling.demo.Approval) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<error.handling.demo.Approval approval> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.approval=param.approval;
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Approval)</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -39 15 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
Rs0 f4 type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
Rs0 f4 guid 150850F93386A3AD #txt
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f6 guid 1508510768ABBCDA #txt
Rs0 f6 type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
Rs0 f6 actionDecl 'error.handling.demo.approval.RequestApproval.RequestApprovalData out;
' #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve</name>
    </language>
</elementInfo>
' #txt
Rs0 f6 83 147 26 26 -22 12 #rect
Rs0 f6 @|RichDialogProcessStartIcon #fIcon
Rs0 f9 guid 15085107DFA259AD #txt
Rs0 f9 type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
Rs0 f9 actionDecl 'error.handling.demo.approval.RequestApproval.RequestApprovalData out;
' #txt
Rs0 f9 actionTable 'out=in;
' #txt
Rs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>decline</name>
    </language>
</elementInfo>
' #txt
Rs0 f9 83 243 26 26 -20 12 #rect
Rs0 f9 @|RichDialogProcessStartIcon #fIcon
Rs0 f12 expr out #txt
Rs0 f12 109 160 211 160 #arcP
Rs0 f5 actionCode error.setAttribute("declineReason",in.declineReason); #txt
Rs0 f5 errorCode approval:declined #txt
Rs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approval:declined</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f5 211 243 26 26 -48 15 #rect
Rs0 f5 @|ErrorEndIcon #fIcon
Rs0 f8 expr out #txt
Rs0 f8 109 256 211 256 #arcP
>Proto Rs0 .type error.handling.demo.approval.RequestApproval.RequestApprovalData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f6 mainOut f12 tail #connect
Rs0 f12 head f4 mainIn #connect
Rs0 f9 mainOut f8 tail #connect
Rs0 f8 head f5 mainIn #connect