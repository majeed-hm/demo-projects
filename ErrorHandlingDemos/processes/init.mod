[Ivy]
[>Created: Mon Jul 27 16:55:03 CEST 2015]
14ECFF6FDA133590 3.17 #module
>Proto >Proto Collection #zClass
it0 init Big #zClass
it0 B #cInfo
it0 #process
it0 @TextInP .resExport .resExport #zField
it0 @TextInP .type .type #zField
it0 @TextInP .processKind .processKind #zField
it0 @AnnotationInP-0n ai ai #zField
it0 @MessageFlowInP-0n messageIn messageIn #zField
it0 @MessageFlowOutP-0n messageOut messageOut #zField
it0 @TextInP .xml .xml #zField
it0 @TextInP .responsibility .responsibility #zField
it0 @StartRequest f0 '' #zField
it0 @EndTask f1 '' #zField
it0 @DBStep f3 '' #zField
it0 @PushWFArc f4 '' #zField
it0 @DBStep f5 '' #zField
it0 @PushWFArc f6 '' #zField
it0 @DBStep f7 '' #zField
it0 @PushWFArc f8 '' #zField
it0 @PushWFArc f2 '' #zField
>Proto it0 it0 init #zField
it0 f0 outLink start.ivp #txt
it0 f0 type error.handling.demo.Data #txt
it0 f0 inParamDecl '<> param;' #txt
it0 f0 actionDecl 'error.handling.demo.Data out;
' #txt
it0 f0 guid 14ECFF6FDA9F12DD #txt
it0 f0 requestEnabled true #txt
it0 f0 triggerEnabled false #txt
it0 f0 callSignature start() #txt
it0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
it0 f0 @C|.responsibility Everybody #txt
it0 f0 81 49 30 30 -21 17 #rect
it0 f0 @|StartRequestIcon #fIcon
it0 f1 type error.handling.demo.Data #txt
it0 f1 657 49 30 30 0 15 #rect
it0 f1 @|EndIcon #fIcon
it0 f3 actionDecl 'error.handling.demo.Data out;
' #txt
it0 f3 actionTable 'out=in;
' #txt
it0 f3 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE ANY_SQL SYSTEM  ""sqlStatements.dtd"">
<ANY_SQL><Verbatim quote=''true''>CREATE TABLE Stock
( 
  product VARCHAR(50),
  numberOfItems INTEGER
)</Verbatim></ANY_SQL>' #txt
it0 f3 dbUrl stock #txt
it0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
it0 f3 dbWizard 'CREATE TABLE Stock
( 
  product VARCHAR(50),
  numberOfItems INTEGER
)' #txt
it0 f3 lotSize 2147483647 #txt
it0 f3 startIdx 0 #txt
it0 f3 type error.handling.demo.Data #txt
it0 f3 168 42 112 44 0 -8 #rect
it0 f3 @|DBStepIcon #fIcon
it0 f4 expr out #txt
it0 f4 111 64 168 64 #arcP
it0 f5 actionDecl 'error.handling.demo.Data out;
' #txt
it0 f5 actionTable 'out=in;
' #txt
it0 f5 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE INSERT SYSTEM  ""sqlStatements.dtd"">
<INSERT><Table name=''STOCK''/><Value column=''PRODUCT''><String>""PostIt""</String></Value><Value column=''NUMBEROFITEMS''><Number>5</Number></Value></INSERT>' #txt
it0 f5 dbUrl stock #txt
it0 f5 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
it0 f5 lotSize 2147483647 #txt
it0 f5 startIdx 0 #txt
it0 f5 type error.handling.demo.Data #txt
it0 f5 328 42 112 44 0 -8 #rect
it0 f5 @|DBStepIcon #fIcon
it0 f6 expr out #txt
it0 f6 280 64 328 64 #arcP
it0 f7 actionDecl 'error.handling.demo.Data out;
' #txt
it0 f7 actionTable 'out=in;
' #txt
it0 f7 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE INSERT SYSTEM  ""sqlStatements.dtd"">
<INSERT><Table name=''STOCK''/><Value column=''PRODUCT''><String>""Pen""</String></Value><Value column=''NUMBEROFITEMS''><Number>2</Number></Value></INSERT>' #txt
it0 f7 dbUrl stock #txt
it0 f7 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
it0 f7 lotSize 2147483647 #txt
it0 f7 startIdx 0 #txt
it0 f7 type error.handling.demo.Data #txt
it0 f7 488 42 112 44 0 -8 #rect
it0 f7 @|DBStepIcon #fIcon
it0 f8 expr out #txt
it0 f8 440 64 488 64 #arcP
it0 f2 expr out #txt
it0 f2 600 64 657 64 #arcP
>Proto it0 .type error.handling.demo.Data #txt
>Proto it0 .processKind NORMAL #txt
>Proto it0 0 0 32 24 18 0 #rect
>Proto it0 @|BIcon #fIcon
it0 f0 mainOut f4 tail #connect
it0 f4 head f3 mainIn #connect
it0 f3 mainOut f6 tail #connect
it0 f6 head f5 mainIn #connect
it0 f5 mainOut f8 tail #connect
it0 f8 head f7 mainIn #connect
it0 f7 mainOut f2 tail #connect
it0 f2 head f1 mainIn #connect