[Ivy]
[>Created: Tue Jan 08 14:12:23 CET 2013]
13C190633FB24F7F 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SubstitutesProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogMethodStart f8 '' #zField
Ss0 @RichDialogEnd f10 '' #zField
Ss0 @RichDialogProcessStart f4 '' #zField
Ss0 @RichDialogEnd f5 '' #zField
Ss0 @RichDialogProcessStep f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @RichDialogProcessStep f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogProcessStep f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogProcessStep f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f7 '' #zField
>Proto Ss0 Ss0 SubstitutesProcess #zField
Ss0 f1 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f1 86 198 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 13C1913BA384579D #txt
Ss0 f3 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f3 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addSubstitute</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 470 54 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f0 guid 13C191B17E767754 #txt
Ss0 f0 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f0 method start(htmlwfui.Substitute) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Substitute substitute> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<java.lang.String option,htmlwfui.Substitute substitute> result;
' #txt
Ss0 f0 outParameterMapAction 'result.option=in.option;
result.substitute=in.substitute;
' #txt
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Substitute)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 86 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f6 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'out.substitute.substitutes = ivy.session.getSessionUser().getSubstitutes();

out.substitute.substiutions = ivy.session.getSessionUser().getSubstitutions();' #txt
Ss0 f6 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>actual settings</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 78 148 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 96 172 96 198 #arcP
Ss0 f8 guid 13C1941F795E33B1 #txt
Ss0 f8 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f8 method removeSubstitution(Number) #txt
Ss0 f8 disableUIEvents false #txt
Ss0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number idx> param = methodEvent.getInputArguments();
' #txt
Ss0 f8 inParameterMapAction 'out.deleteNr=param.idx;
' #txt
Ss0 f8 outParameterDecl '<> result;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeSubstitution(Number)</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 246 54 20 20 13 0 #rect
Ss0 f8 @|RichDialogMethodStartIcon #fIcon
Ss0 f10 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f10 guid 13C196175A651000 #txt
Ss0 f10 470 150 20 20 13 0 #rect
Ss0 f10 @|RichDialogEndIcon #fIcon
Ss0 f4 guid 13C197740FFDD22A #txt
Ss0 f4 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f4 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showMySubstitutions</name>
    </language>
</elementInfo>
' #txt
Ss0 f4 598 54 20 20 13 0 #rect
Ss0 f4 @|RichDialogProcessStartIcon #fIcon
Ss0 f5 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f5 guid 13C198C074486779 #txt
Ss0 f5 598 150 20 20 13 0 #rect
Ss0 f5 @|RichDialogEndIcon #fIcon
Ss0 f13 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f13 actionTable 'out=in;
out.option="show";
' #txt
Ss0 f13 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f13 590 100 36 24 20 -2 #rect
Ss0 f13 @|RichDialogProcessStepIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 608 74 608 100 #arcP
Ss0 f12 expr out #txt
Ss0 f12 608 124 608 150 #arcP
Ss0 f15 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f15 actionTable 'out=in;
out.option="add";
' #txt
Ss0 f15 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f15 462 100 36 24 20 -2 #rect
Ss0 f15 @|RichDialogProcessStepIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 480 74 480 100 #arcP
Ss0 f11 expr out #txt
Ss0 f11 480 124 480 150 #arcP
Ss0 f17 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;

List substitutes = ivy.session.getSessionUser().getSubstitutes();
for(IUserSubstitute substitute:substitutes)
{
	if(substitute.getIdentifier() == in.deleteNr)
	{
			ivy.session.getSessionUser().deleteSubstitute(substitute);
			break;
	}	
}' #txt
Ss0 f17 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f17 238 148 36 24 20 -2 #rect
Ss0 f17 @|RichDialogProcessStepIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 256 74 256 148 #arcP
Ss0 f18 0 0.33434769690155586 0 0 #arcLabel
Ss0 f9 expr out #txt
Ss0 f9 238 160 114 160 #arcP
Ss0 f19 actionDecl 'htmlwfui.Substitutes.SubstitutesData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
out.substitute.userList = [""];
for(IUser user : users)
{
	out.substitute.userList.add(user.getName());
}	

List roles = ivy.session.getSessionUser().getAllRoles();
out.substitute.roleList = [""];
for(IRole role: roles)
{
	out.substitute.roleList.add(role.getName());
}	' #txt
Ss0 f19 type htmlwfui.Substitutes.SubstitutesData #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 78 100 36 24 20 -2 #rect
Ss0 f19 @|RichDialogProcessStepIcon #fIcon
Ss0 f20 expr out #txt
Ss0 f20 96 74 96 100 #arcP
Ss0 f7 expr out #txt
Ss0 f7 96 124 96 148 #arcP
>Proto Ss0 .type htmlwfui.Substitutes.SubstitutesData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f4 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f13 mainOut f12 tail #connect
Ss0 f12 head f5 mainIn #connect
Ss0 f3 mainOut f16 tail #connect
Ss0 f16 head f15 mainIn #connect
Ss0 f15 mainOut f11 tail #connect
Ss0 f11 head f10 mainIn #connect
Ss0 f8 mainOut f18 tail #connect
Ss0 f18 head f17 mainIn #connect
Ss0 f17 mainOut f9 tail #connect
Ss0 f9 head f6 mainIn #connect
Ss0 f0 mainOut f20 tail #connect
Ss0 f20 head f19 mainIn #connect
Ss0 f19 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect