[Ivy]
154A00644BB7C22B 9.3.1 #module
>Proto >Proto Collection #zClass
As0 ApprovalDialogProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdEvent f3 '' #zField
As0 @UdExitEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
>Proto As0 As0 ApprovalDialogProcess #zField
As0 f0 guid 154A00644DE72ED2 #txt
As0 f0 method start(com.axonivy.connectivity.rest.Approval) #txt
As0 f0 inParameterDecl '<com.axonivy.connectivity.rest.Approval approval> param;' #txt
As0 f0 inParameterMapAction 'out.approval=param.approval;
' #txt
As0 f0 outParameterDecl '<> result;' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Approval)</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -39 15 #rect
As0 f1 211 51 26 26 0 12 #rect
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 154A00644F7200D5 #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -15 12 #rect
As0 f4 211 147 26 26 0 12 #rect
As0 f5 expr out #txt
As0 f5 109 160 211 160 #arcP
>Proto As0 .type com.axonivy.connectivity.rest.ApprovalDialog.ApprovalDialogData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
