[Ivy]
15254CFDBF077CCB 9.3.1 #module
>Proto >Proto Collection #zClass
Ps0 ReserveParkingLotProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @GridStep f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 ReserveParkingLotProcess #zField
Ps0 f0 guid 15089E383F0E1564 #txt
Ps0 f0 method start(workflow.trigger.NewEmployeeData) #txt
Ps0 f0 inParameterDecl '<workflow.trigger.NewEmployeeData employee> param;' #txt
Ps0 f0 inParameterMapAction 'out.newEmployeeData=param.employee;
' #txt
Ps0 f0 outParameterDecl '<workflow.trigger.NewEmployeeData employee> result;' #txt
Ps0 f0 outParameterMapAction 'result.employee=in.newEmployeeData;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ParkingLotReservationData)</name>
        <nameStyle>32,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -91 15 #rect
Ps0 f1 339 51 26 26 0 12 #rect
Ps0 f3 guid 15089E383F818001 #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 147 26 26 -15 12 #rect
Ps0 f4 211 147 26 26 0 12 #rect
Ps0 f5 expr out #txt
Ps0 f5 109 160 211 160 #arcP
Ps0 f6 actionTable 'out=in;
' #txt
Ps0 f6 actionCode 'for (int i = 1; i <= 10; i++){
	in.newEmployeeData.availableParkingLots.add(i);
}

' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 168 42 112 44 -8 -8 #rect
Ps0 f7 expr out #txt
Ps0 f7 109 64 168 64 #arcP
Ps0 f2 expr out #txt
Ps0 f2 280 64 339 64 #arcP
>Proto Ps0 .type workflow.trigger.ReserveParkingLot.ReserveParkingLotData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f0 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f6 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
