[Ivy]
15004A488FF27022 9.3.1 #module
>Proto >Proto Collection #zClass
Ss0 SelectOptionsProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @UdEvent f3 '' #zField
Ss0 @UdExitEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
>Proto Ss0 Ss0 SelectOptionsProcess #zField
Ss0 f0 guid 15004A489138060F #txt
Ss0 f0 method start(booking.Customer) #txt
Ss0 f0 inParameterDecl '<booking.Customer customer> param;' #txt
Ss0 f0 inParameterMapAction 'out.customer=param.customer;
' #txt
Ss0 f0 inActionCode 'out.flight; // init' #txt
Ss0 f0 outParameterDecl '<booking.Flight flight,String carSize> result;' #txt
Ss0 f0 outParameterMapAction 'result.flight=in.flight;
result.carSize=in.carSize;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Customer)</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -43 15 #rect
Ss0 f1 211 51 26 26 0 12 #rect
Ss0 f2 expr out #txt
Ss0 f2 109 64 211 64 #arcP
Ss0 f3 guid 15004A48931FDB15 #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 147 26 26 -15 12 #rect
Ss0 f4 211 147 26 26 0 12 #rect
Ss0 f5 expr out #txt
Ss0 f5 109 160 211 160 #arcP
>Proto Ss0 .type error.handling.demo.SelectOptions.SelectOptionsData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
