[Ivy]
[>Created: Wed May 27 21:45:48 CEST 2009]
1180E72D324A3BE5 3.11 #module
>Proto >Proto Collection #zClass
Es0 ErrorDetailDialogProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessStart f1 '' #zField
Es0 @RichDialogEnd f2 '' #zField
Es0 @PushWFArc f3 '' #zField
Es0 @RichDialogProcessEnd f4 '' #zField
Es0 @RichDialogProcessStep f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @PushWFArc f5 '' #zField
>Proto Es0 Es0 ErrorDetailDialogProcess #zField
Es0 f0 guid 1180E75DFA8E606F #txt
Es0 f0 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f0 method showDetailError(java.lang.Throwable) #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Throwable error> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inActionCode 'import java.io.StringWriter;
import java.io.PrintWriter;

StringWriter writer = new StringWriter(1000);
PrintWriter printer = new PrintWriter(writer);

param.error.printStackTrace(printer);

out.errorStackTrace = writer.toString();
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 embeddedRdInitializations '* ' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetailError(Throwable)</name>
        <nameStyle>26,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 54 38 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f1 guid 1180E75E9B47C51C #txt
Es0 f1 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f1 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData out;
' #txt
Es0 f1 actionTable 'out=in;
' #txt
Es0 f1 430 46 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessStartIcon #fIcon
Es0 f2 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f2 guid 1180E76072C5B80E #txt
Es0 f2 427 163 26 26 14 0 #rect
Es0 f2 @|RichDialogEndIcon #fIcon
Es0 f3 expr out #txt
Es0 f3 440 66 440 163 #arcP
Es0 f4 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f4 51 163 26 26 14 0 #rect
Es0 f4 @|RichDialogProcessEndIcon #fIcon
Es0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData out;
' #txt
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 actionCode panel.getRootPane().setDefaultButton(panel.okButton); #txt
Es0 f6 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default button</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 46 92 36 24 20 -2 #rect
Es0 f6 @|RichDialogProcessStepIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 64 58 64 92 #arcP
Es0 f5 expr out #txt
Es0 f5 64 116 64 163 #arcP
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16764007</swimlaneColor>
</elementInfo>
' #txt
>Proto Es0 .type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 .ui2RdDataAction 'out.errorStackTrace=panel.detailTextArea.text;
' #txt
>Proto Es0 .rdData2UIAction 'panel.detailTextArea.text=in.errorStackTrace;
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f1 mainOut f3 tail #connect
Es0 f3 head f2 mainIn #connect
Es0 f0 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f6 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
