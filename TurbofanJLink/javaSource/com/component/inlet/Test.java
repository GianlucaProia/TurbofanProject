//package com.component.inlet;
//
//import java.net.MalformedURLException;
//import java.net.URL;
//
//import com.air.flow.AirFlow;
//
//public class Test {
//	
//	public static void main(String[] args) throws MalformedURLException {
//		
//		Inlet inlet = new Inlet();
//		AirFlow airFlowIn = new AirFlow();
//		inlet.setAirFlowIn(airFlowIn);
//		airFlowIn.setGamma(1.4);
//		
//		System.out.println("Il valore di gamma �: "+inlet.getAirFlowIn().getGamma());
//		
//		airFlowIn.setCz(10);
//		
//		System.out.println("Il valore di Cz �: "+inlet.getAirFlowIn().getCz());
//		
//		inlet.getAirFlowIn().setCp(1);
//		System.out.println("Il valore di cp �: "+inlet.getAirFlowIn().getCp());
//		System.out.println("Il valore di cp �: "+airFlowIn.getCp());
//		
//		String string = new String("Prova");
//		byte[] bytes = string.toString().getBytes();
//		
//		System.getProperties().getProperty("");
//		Integer integer = new Integer(10);
//		integer.byteValue();
//	}
//	
//
//}
