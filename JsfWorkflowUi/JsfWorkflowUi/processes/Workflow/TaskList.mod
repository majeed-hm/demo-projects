[Ivy]
[>Created: Thu May 08 16:06:32 CEST 2014]
13EE5C9EAAA819C8 3.17 #module
>Proto >Proto Collection #zClass
Tt0 TaskList Big #zClass
Tt0 B #cInfo
Tt0 #process
Tt0 @TextInP .resExport .resExport #zField
Tt0 @TextInP .type .type #zField
Tt0 @TextInP .processKind .processKind #zField
Tt0 @AnnotationInP-0n ai ai #zField
Tt0 @TextInP .xml .xml #zField
Tt0 @TextInP .responsibility .responsibility #zField
Tt0 @StartRequest f0 '' #zField
Tt0 @RichDialog f1 '' #zField
Tt0 @PushWFArc f2 '' #zField
>Proto Tt0 Tt0 TaskList #zField
Tt0 f0 outLink DefaultTaskListPage.ivp #txt
Tt0 f0 type ch.ivyteam.wf.Data #txt
Tt0 f0 inParamDecl '<> param;' #txt
Tt0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Tt0 f0 guid 13EE5CF1C9A3E880 #txt
Tt0 f0 requestEnabled true #txt
Tt0 f0 triggerEnabled false #txt
Tt0 f0 callSignature DefaultTaskListPage() #txt
Tt0 f0 persist false #txt
Tt0 f0 startName DefaultTaskListPage #txt
Tt0 f0 startDescription 'This start is used to overwrite the default task list.' #txt
Tt0 f0 taskData '#
#Thu May 08 11:30:25 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Tt0 f0 caseData '#
#Thu May 08 11:30:25 CEST 2014
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Tt0 f0 showInStartList 0 #txt
Tt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Tt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultTaskListPage.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
        <desc>This start is used to overwrite the default task list.
Use /ivy/wf/taskList to call it.
ivy.html.taskListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
Tt0 f0 @C|.responsibility Everybody #txt
Tt0 f0 81 49 30 30 -66 17 #rect
Tt0 f0 @|StartRequestIcon #fIcon
Tt0 f0 -1|-1|-9671572 #nodeStyle
Tt0 f1 targetWindow NEW:card: #txt
Tt0 f1 targetDisplay TOP #txt
Tt0 f1 richDialogId ch.ivyteam.wf.workflow.TaskList #txt
Tt0 f1 startMethod start() #txt
Tt0 f1 type ch.ivyteam.wf.Data #txt
Tt0 f1 requestActionDecl '<> param;' #txt
Tt0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Tt0 f1 responseMappingAction 'out=in;
' #txt
Tt0 f1 windowConfiguration '* ' #txt
Tt0 f1 isAsynch false #txt
Tt0 f1 isInnerRd false #txt
Tt0 f1 userContext '* ' #txt
Tt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task list</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f1 168 42 112 44 -21 -8 #rect
Tt0 f1 @|RichDialogIcon #fIcon
Tt0 f1 -1|-1|-9671572 #nodeStyle
Tt0 f2 expr out #txt
Tt0 f2 111 64 168 64 #arcP
>Proto Tt0 .type ch.ivyteam.wf.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f0 mainOut f2 tail #connect
Tt0 f2 head f1 mainIn #connect
