[Ivy]
171C62230757992F 9.2.0 #module
>Proto >Proto Collection #zClass
uh0 uiPath Big #zClass
uh0 B #cInfo
uh0 #process
uh0 @TextInP .type .type #zField
uh0 @TextInP .processKind .processKind #zField
uh0 @TextInP .xml .xml #zField
uh0 @TextInP .responsibility .responsibility #zField
uh0 @EndTask f1 '' #zField
uh0 @RestClientCall f3 '' #zField
uh0 @StartRequest f9 '' #zField
uh0 @PushWFArc f10 '' #zField
uh0 @ErrorBoundaryEvent f11 '' #zField
uh0 @UserTask f13 '' #zField
uh0 @PushWFArc f12 '' #zField
uh0 @TkArc f18 '' #zField
uh0 @RestClientCall f5 '' #zField
uh0 @PushWFArc f6 '' #zField
uh0 @RestClientCall f0 '' #zField
uh0 @PushWFArc f2 '' #zField
uh0 @InfoButton f7 '' #zField
uh0 @RestClientCall f22 '' #zField
uh0 @RestClientCall f24 '' #zField
uh0 @PushWFArc f16 '' #zField
uh0 @PushWFArc f4 '' #zField
uh0 @PushWFArc f8 '' #zField
>Proto uh0 uh0 uiPath #zField
uh0 f1 593 289 30 30 0 15 #rect
uh0 f1 @|EndIcon #fIcon
uh0 f3 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f3 path /odata/Settings/UiPath.Server.Configuration.OData.GetLicense #txt
uh0 f3 resultType com.uipath.platform.client.LicenseDto #txt
uh0 f3 responseMapping 'out.license=result;
' #txt
uh0 f3 clientErrorCode ivy:error:rest:client #txt
uh0 f3 statusErrorCode ivy:error:rest:client #txt
uh0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: UI Path
Read License</name>
        <nameStyle>3,5,0
22,5
</nameStyle>
        <desc>Simple request against RPA Orchestration Platform provided by UIPath
 (mainly to enforce an active OAUTH session)</desc>
    </language>
</elementInfo>
' #txt
uh0 f3 248 42 128 44 -40 -15 #rect
uh0 f3 @|RestClientCallIcon #fIcon
uh0 f9 outLink startRPA.ivp #txt
uh0 f9 inParamDecl '<> param;' #txt
uh0 f9 requestEnabled true #txt
uh0 f9 triggerEnabled false #txt
uh0 f9 callSignature startRPA() #txt
uh0 f9 startName '8.2 RPA integration with UIPath' #txt
uh0 f9 caseData businessCase.attach=true #txt
uh0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startRPA.ivp</name>
    </language>
</elementInfo>
' #txt
uh0 f9 @C|.responsibility Everybody #txt
uh0 f9 81 49 30 30 -29 17 #rect
uh0 f9 @|StartRequestIcon #fIcon
uh0 f10 111 64 248 64 #arcP
uh0 f11 actionTable 'out=in;
' #txt
uh0 f11 actionCode 'ivy.log.info("rest error "+error);

com.axonivy.connectivity.rest.client.auth.OAuthErrorHandler.isAuthError(error);' #txt
uh0 f11 attachedToRef 171C62230757992F-f3 #txt
uh0 f11 337 81 30 30 0 15 #rect
uh0 f11 @|ErrorBoundaryEventIcon #fIcon
uh0 f13 dialogId com.axonivy.connectivity.rest.UiPathAuthorization #txt
uh0 f13 startMethod start() #txt
uh0 f13 requestActionDecl '<> param;' #txt
uh0 f13 responseMappingAction 'out=in;
' #txt
uh0 f13 taskData 'TaskA.NAM=Authorize UIPath API Call
TaskA.SKIP_TASK_LIST=true' #txt
uh0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>auth</name>
    </language>
</elementInfo>
' #txt
uh0 f13 192 138 112 44 -14 -7 #rect
uh0 f13 @|UserTaskIcon #fIcon
uh0 f12 248 138 312 86 #arcP
uh0 f12 0 0.8219179492067946 0 0 #arcLabel
uh0 f18 352 111 304 160 #arcP
uh0 f18 1 352 160 #addKink
uh0 f18 1 0.11528174423122502 0 0 #arcLabel
uh0 f5 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f5 path /odata/Jobs #txt
uh0 f5 resultType com.uipath.platform.client.ODataValueOfIEnumerableOfJobDto #txt
uh0 f5 responseMapping 'out.jobs=result.value;
' #txt
uh0 f5 responseCode 'ivy.log.info("found "+result.value.size()+" RPA jobs");' #txt
uh0 f5 clientErrorCode ivy:error:rest:client #txt
uh0 f5 statusErrorCode ivy:error:rest:client #txt
uh0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: UI Path
Read Jobs</name>
        <nameStyle>3,5,0
19,5</nameStyle>
    </language>
</elementInfo>
' #txt
uh0 f5 408 42 128 44 -40 -15 #rect
uh0 f5 @|RestClientCallIcon #fIcon
uh0 f6 376 64 408 64 #arcP
uh0 f0 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f0 path /odata/Robots #txt
uh0 f0 queryParams '$$filter="Type eq ''UNATTENDED''";
' #txt
uh0 f0 method GET #txt
uh0 f0 clientCode 'import com.uipath.platform.client.RobotDto;
import javax.ws.rs.core.GenericEntity;

List<String> filters;
filters.add("Type eq ''Unattended''");

ivy.log.info("filtered:::: "+client.queryParam("$$filter", filters).request().get(String.class));' #txt
uh0 f0 resultType com.uipath.platform.client.ODataValueOfIEnumerableOfRobotDto #txt
uh0 f0 responseMapping 'out.robots=result.value;
' #txt
uh0 f0 responseCode 'ivy.log.info("found "+result.value.size()+" RPA robots");' #txt
uh0 f0 clientErrorCode ivy:error:rest:client #txt
uh0 f0 statusErrorCode ivy:error:rest:client #txt
uh0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: UI Path
Read Robots</name>
        <nameStyle>3,5,0
21,5
</nameStyle>
    </language>
</elementInfo>
' #txt
uh0 f0 408 122 128 44 -40 -15 #rect
uh0 f0 @|RestClientCallIcon #fIcon
uh0 f2 472 86 472 122 #arcP
uh0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Robotics Process Automation (RPA)
use OpenAPI calls to interact with robots 
on the UIPath orchestration platform</name>
        <nameStyle>33,5,0
80,5
</nameStyle>
    </language>
</elementInfo>
' #txt
uh0 f7 72 226 272 60 -129 -22 #rect
uh0 f7 @|IBIcon #fIcon
uh0 f22 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f22 path /odata/Releases #txt
uh0 f22 queryParams '$$filter="contains(ProcessKey, ''order'')";
' #txt
uh0 f22 resultType com.uipath.platform.client.ODataValueOfIEnumerableOfReleaseDto #txt
uh0 f22 responseMapping 'out.releases=result.value;
' #txt
uh0 f22 responseCode 'ivy.log.info("found "+result.value.size()+" Process releases");' #txt
uh0 f22 clientErrorCode ivy:error:rest:client #txt
uh0 f22 statusErrorCode ivy:error:rest:client #txt
uh0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: UI Path
Read Releases</name>
        <nameStyle>3,5,0
23,5
</nameStyle>
    </language>
</elementInfo>
' #txt
uh0 f22 408 202 128 44 -43 -15 #rect
uh0 f22 @|RestClientCallIcon #fIcon
uh0 f24 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f24 path /odata/Jobs/UiPath.Server.Configuration.OData.StartJobs #txt
uh0 f24 method POST #txt
uh0 f24 bodyInputType ENTITY #txt
uh0 f24 bodyObjectType com.uipath.platform.client.JobsStartJobsParameters #txt
uh0 f24 bodyObjectMapping 'param.startInfo.inputArguments="";
param.startInfo.jobPriority=StartProcessDto.JobPriorityEnum.NORMAL;
param.startInfo.jobsCount=0;
param.startInfo.noOfRobots=0;
param.startInfo.releaseKey=in.releases.get(0).key;
param.startInfo.robotIds=[in.robots.get(0).id];
param.startInfo.source=StartProcessDto.SourceEnum.MANUAL;
param.startInfo.strategy=StartProcessDto.StrategyEnum.SPECIFIC;
' #txt
uh0 f24 bodyObjectCode 'for(com.uipath.platform.client.ReleaseDto rel : in.releases){
  if (rel.processKey == "getOrders"){
    ivy.log.info("release in use "+rel);
    param.startInfo.releaseKey = rel.key;
  }
}' #txt
uh0 f24 resultType com.uipath.platform.client.ODataValueOfIEnumerableOfJobDto #txt
uh0 f24 responseCode 'ivy.log.info("started "+result);' #txt
uh0 f24 clientErrorCode ivy:error:rest:client #txt
uh0 f24 statusErrorCode ivy:error:rest:client #txt
uh0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: UI Path
Start Job</name>
        <nameStyle>3,5,0
19,5
</nameStyle>
    </language>
</elementInfo>
' #txt
uh0 f24 408 282 128 44 -40 -15 #rect
uh0 f24 @|RestClientCallIcon #fIcon
uh0 f16 536 304 593 304 #arcP
uh0 f16 0 0.14267180925666198 0 0 #arcLabel
uh0 f4 472 166 472 202 #arcP
uh0 f8 472 246 472 282 #arcP
>Proto uh0 .type com.axonivy.connectivity.rest.UiPathData #txt
>Proto uh0 .processKind NORMAL #txt
>Proto uh0 0 0 32 24 18 0 #rect
>Proto uh0 @|BIcon #fIcon
uh0 f9 mainOut f10 tail #connect
uh0 f10 head f3 mainIn #connect
uh0 f13 out f12 tail #connect
uh0 f12 head f3 mainIn #connect
uh0 f11 mainOut f18 tail #connect
uh0 f18 head f13 in #connect
uh0 f3 mainOut f6 tail #connect
uh0 f6 head f5 mainIn #connect
uh0 f5 mainOut f2 tail #connect
uh0 f2 head f0 mainIn #connect
uh0 f24 mainOut f16 tail #connect
uh0 f16 head f1 mainIn #connect
uh0 f0 mainOut f4 tail #connect
uh0 f4 head f22 mainIn #connect
uh0 f22 mainOut f8 tail #connect
uh0 f8 head f24 mainIn #connect