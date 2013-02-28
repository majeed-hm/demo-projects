[Ivy]
[>Created: Tue Jan 22 07:57:40 CET 2013]
13C610C195D341CE 3.17 #module
>Proto >Proto Collection #zClass
Cy0 PageArchive0 Big #zClass
Cy0 B #cInfo
Cy0 #process
Cy0 @TextInP .resExport .resExport #zField
Cy0 @TextInP .type .type #zField
Cy0 @TextInP .processKind .processKind #zField
Cy0 @AnnotationInP-0n ai ai #zField
Cy0 @TextInP .xml .xml #zField
Cy0 @TextInP .responsibility .responsibility #zField
Cy0 @StartSub f0 '' #zField
Cy0 @EndSub f1 '' #zField
Cy0 @Alternative f18 '' #zField
Cy0 @Page f4 '' #zField
Cy0 @GridStep f8 '' #zField
Cy0 @PushWFArc f9 '' #zField
Cy0 @PushWFArc f19 '' #zField
Cy0 @PushWFArc f21 '' #zField
Cy0 @GridStep f5 '' #zField
Cy0 @PushWFArc f2 '' #zField
Cy0 @PushWFArc f3 '' #zField
Cy0 @PushWFArc f11 '' #zField
>Proto Cy0 Cy0 PageArchive0 #zField
Cy0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Cy0 f0 inParamTable 'out=param.in;
' #txt
Cy0 f0 outParamDecl '<> result;
' #txt
Cy0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f0 callSignature call(htmlwfui.Data) #txt
Cy0 f0 type htmlwfui.Data #txt
Cy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f0 91 35 26 26 14 0 #rect
Cy0 f0 @|StartSubIcon #fIcon
Cy0 f1 type htmlwfui.Data #txt
Cy0 f1 91 339 26 26 14 0 #rect
Cy0 f1 @|EndSubIcon #fIcon
Cy0 f18 type htmlwfui.Data #txt
Cy0 f18 90 282 28 28 14 0 #rect
Cy0 f18 @|AlternativeIcon #fIcon
Cy0 f4 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Cy0 f4 outLinks "LinkA.ivp","LinkB.ivp" #txt
Cy0 f4 template "/ProcessPages/PageArchive/pageArchive.ivc" #txt
Cy0 f4 type htmlwfui.Data #txt
Cy0 f4 skipLink skip.ivp #txt
Cy0 f4 sortLink sort.ivp #txt
Cy0 f4 templateWizard '#
#Tue Dec 14 12:33:28 CET 2010
' #txt
Cy0 f4 pageArchivingActivated false #txt
Cy0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PageArchive List</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f4 @C|.responsibility Everybody #txt
Cy0 f4 86 156 36 24 24 1 #rect
Cy0 f4 @|PageIcon #fIcon
Cy0 f8 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f8 actionTable 'out=in.clone();
' #txt
Cy0 f8 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;
out.tmpTask.setOriginalPriority(WorkflowPriority.valueOf(WorkflowPriority.class, in.tmpTaskDetail.prioName) as WorkflowPriority);

if(in.tmpTaskDetail.delay.toNumber()>0)
{
	out.tmpTask.setDelayTimestamp(in.tmpTaskDetail.delay);
}
if(in.tmpTaskDetail.exp.toNumber()>0)
{
	out.tmpTask.setExpiryTimestamp(in.tmpTaskDetail.exp);
}' #txt
Cy0 f8 type htmlwfui.Data #txt
Cy0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cy0 f8 86 220 36 24 20 -2 #rect
Cy0 f8 @|StepIcon #fIcon
Cy0 f9 expr data #txt
Cy0 f9 outCond ivp=="LinkA.ivp" #txt
Cy0 f9 104 180 104 220 #arcP
Cy0 f19 expr out #txt
Cy0 f19 104 244 104 282 #arcP
Cy0 f21 expr data #txt
Cy0 f21 outCond ivp=="LinkB.ivp" #txt
Cy0 f21 94 180 97 289 #arcP
Cy0 f21 1 48 232 #addKink
Cy0 f21 0 0.9888850792258391 0 0 #arcLabel
Cy0 f5 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f5 actionTable 'out=in;
' #txt
Cy0 f5 actionCode 'import htmlwfui.ArchivePageDetail;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.ITask;

List<ITask> tasks = new List<ITask>();

if(in.#tmpTask!=null)
{
	tasks.add(in.tmpTask);
}	
else if(in.#tempCase!=null)
{
	tasks.addAll(in.tempCase.getTasks());
}

for(int i = 0; i < tasks.size(); i++)
{
	List pas = tasks.get(i).getPageArchives();
	for(int j = 0 ; j < pas.size(); j++)
	{
		IPageArchive pa = tasks.get(i).getPageArchives().get(j) as IPageArchive;
		ArchivePageDetail apd = new ArchivePageDetail();
		apd.setRef(ivy.html.pageArchiveRef(pa));
		apd.setName(pa.getName());
		apd.setId(pa.getIdentifier());
		out.pageArchives.add(apd);
	}	
}	

' #txt
Cy0 f5 type htmlwfui.Data #txt
Cy0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get archived pages</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f5 86 92 36 24 20 6 #rect
Cy0 f5 @|StepIcon #fIcon
Cy0 f2 expr out #txt
Cy0 f2 104 116 104 156 #arcP
Cy0 f3 expr in #txt
Cy0 f3 104 310 104 339 #arcP
Cy0 f11 expr out #txt
Cy0 f11 104 61 104 92 #arcP
>Proto Cy0 .type htmlwfui.Data #txt
>Proto Cy0 .processKind CALLABLE_SUB #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f4 out f9 tail #connect
Cy0 f9 head f8 mainIn #connect
Cy0 f8 mainOut f19 tail #connect
Cy0 f19 head f18 in #connect
Cy0 f4 out f21 tail #connect
Cy0 f21 head f18 in #connect
Cy0 f5 mainOut f2 tail #connect
Cy0 f2 head f4 mainIn #connect
Cy0 f18 out f3 tail #connect
Cy0 f3 head f1 mainIn #connect
Cy0 f0 mainOut f11 tail #connect
Cy0 f11 head f5 mainIn #connect