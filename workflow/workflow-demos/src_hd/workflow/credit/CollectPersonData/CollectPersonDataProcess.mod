[Ivy]
15B37CDEFA487D01 9.3.1 #module
>Proto >Proto Collection #zClass
Cs0 CollectPersonDataProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f5 '' #zField
>Proto Cs0 Cs0 CollectPersonDataProcess #zField
Cs0 f0 guid 15B37CDEFFB42101 #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl '<> param;' #txt
Cs0 f0 outParameterDecl '<> result;' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -16 15 #rect
Cs0 f1 339 51 26 26 0 12 #rect
Cs0 f3 guid 15B37CDF019E4063 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -15 12 #rect
Cs0 f4 339 147 26 26 0 12 #rect
Cs0 f6 actionTable 'out=in;
out.dossier=ivy.repo.get(workflow.credit.CreditDossier.class) as workflow.credit.CreditDossier;
out.dossier.customer.address.country="USA";
out.dossier.customer.firstName="John";
out.dossier.customer.isMale=true;
out.dossier.customer.name="Doe";
out.dossier.request.amount=20000;
out.dossier.request.amountOfOtherCredits=1000000;
out.dossier.request.reason="To buy a new car";
out.dossier.request.salary=80000;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load dossier</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 168 42 112 44 -37 -8 #rect
Cs0 f7 expr out #txt
Cs0 f7 109 64 168 64 #arcP
Cs0 f2 expr out #txt
Cs0 f2 280 64 339 64 #arcP
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode ivy.repo.save(in.dossier); #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save dossier</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 168 138 112 44 -37 -8 #rect
Cs0 f9 expr out #txt
Cs0 f9 109 160 168 160 #arcP
Cs0 f5 expr out #txt
Cs0 f5 280 160 339 160 #arcP
>Proto Cs0 .type workflow.credit.CollectPersonData.CollectPersonDataData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
