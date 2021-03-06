package skuniv.ac.kr.contoller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import model.Reservation;
import skuniv.ac.kr.service.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	Gson gson;
	
	@Resource(name = "ReservationService")
	private ReservationService reservationService;
	
	@GetMapping(value = "/reservation")
	public ModelAndView reservation(ModelAndView modelAndView) throws Exception {
		modelAndView.setViewName("reservation/reservation");
		return modelAndView;
	}
	@GetMapping(value = "/reservation_select_day")
	public ModelAndView reservation_select_day(ModelAndView modelAndView,@RequestParam("date") String date) throws Exception {
		modelAndView.setViewName("reservation/reservation_select_day_show");
		System.out.println("reservation_select_day");
		String selectDate=date;
		
		Map<String,Map<String, String>> reservationPossibleMap = reservationService.selectReservationPossibleMap(selectDate);
		
		modelAndView.addObject("reservationPossibleMap", reservationPossibleMap);
		modelAndView.addObject("selectDate", selectDate);
		return modelAndView;
	}
	@PostMapping(value = "/reservation_input_customer")
	public ModelAndView reservation_input_customer(
			@RequestParam("cut") String cutParam,
			@RequestParam("dye") String dyeParam,
			@RequestParam("pum") String pumParam,
			@RequestParam("date") String dateParam,
			@RequestParam("st") String stParam,
			@RequestParam("et") String etParam,
			@RequestParam("designer") String designerParam,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("reservation_input_customer");
		modelAndView.setViewName("reservation/reservation_input_customer");
		String cut=cutParam;
		String dye=dyeParam;
		String pum=pumParam;
		String date=dateParam;
		String st=stParam;
		String et=etParam;
		String designer=designerParam;
		
		Reservation reservation=reservationService.setBeforeInputCustomer(cut,dye,pum,date,st,et,designer);
		modelAndView.addObject("reservation", reservation);
		return modelAndView;
	}
	@GetMapping(value = "/reservation_complete")
	public ModelAndView reservation_complete(ModelAndView modelAndView) throws Exception {
		modelAndView.setViewName("reservation/reservation_complete");
		return modelAndView;
	}
	
	@GetMapping(value = "/sms")
	public String sms(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		String charsetType = "EUC-KR"; 
		request.setCharacterEncoding(charsetType);
		response.setCharacterEncoding(charsetType);
		
		String jsonReservation=request.getParameter("json_reservation");
		System.out.println(jsonReservation);
		
		String certificationNumber=request.getParameter("msg");
		System.out.println(certificationNumber);
		
		certificationNumber=certificationNumber.substring(7, 11);
		System.out.println(certificationNumber);
		
		Gson gson=new Gson();		
		Reservation reservation=gson.fromJson(jsonReservation, Reservation.class);
		
		
		PrintWriter out=response.getWriter();
		String  action = nullcheck(request.getParameter("action"), "");
	    if(action.equals("go")) {

	        String sms_url = "";
	        sms_url = "https://sslsms.cafe24.com/sms_sender.php"; // SMS ���ۿ�û URL
	        String user_id = base64Encode("c2619zz"); // SMS���̵�
	        String secure = base64Encode("c498757e8e5aec4a77a07c684f92f2ec");//����Ű
	        String msg = base64Encode(nullcheck(request.getParameter("msg"), ""));
	        String rphone = base64Encode(nullcheck(request.getParameter("rphone"), ""));
	        String sphone1 = base64Encode(nullcheck(request.getParameter("sphone1"), ""));
	        String sphone2 = base64Encode(nullcheck(request.getParameter("sphone2"), ""));
	        String sphone3 = base64Encode(nullcheck(request.getParameter("sphone3"), ""));
	        
	        String rdate = base64Encode(nullcheck(request.getParameter("rdate"), ""));
	        String rtime = base64Encode(nullcheck(request.getParameter("rtime"), ""));
	        String mode = base64Encode("1");
	        String subject = "";
	        if(nullcheck(request.getParameter("smsType"), "").equals("L")) {
	            subject = base64Encode(nullcheck(request.getParameter("subject"), ""));
	        }
	        String testflag = base64Encode(nullcheck(request.getParameter("testflag"), ""));
	        String destination = base64Encode(nullcheck(request.getParameter("destination"), ""));
	        String repeatFlag = base64Encode(nullcheck(request.getParameter("repeatFlag"), ""));
	        String repeatNum = base64Encode(nullcheck(request.getParameter("repeatNum"), ""));
	        String repeatTime = base64Encode(nullcheck(request.getParameter("repeatTime"), ""));
	        String returnurl = nullcheck(request.getParameter("returnurl"), "");
	        String nointeractive = nullcheck(request.getParameter("nointeractive"), "");
	        String smsType = base64Encode(nullcheck(request.getParameter("smsType"), ""));

	        String[] host_info = sms_url.split("/");
	        String host = host_info[2];
	        String path = "/" + host_info[3];
	        int port = 80;

	        // ������ ���� ���� ����
	        String arrKey[]
	            = new String[] {"user_id","secure","msg", "rphone","sphone1","sphone2","sphone3","rdate","rtime"
	                        ,"mode","testflag","destination","repeatFlag","repeatNum", "repeatTime", "smsType", "subject"};
	        String valKey[]= new String[arrKey.length] ;
	        valKey[0] = user_id;
	        valKey[1] = secure;
	        valKey[2] = msg;
	        valKey[3] = rphone;
	        valKey[4] = sphone1;
	        valKey[5] = sphone2;
	        valKey[6] = sphone3;
	        valKey[7] = rdate;
	        valKey[8] = rtime;
	        valKey[9] = mode;
	        valKey[10] = testflag;
	        valKey[11] = destination;
	        valKey[12] = repeatFlag;
	        valKey[13] = repeatNum;
	        valKey[14] = repeatTime;
	        valKey[15] = smsType;
	        valKey[16] = subject;

	        String boundary = "";
	        Random rnd = new Random();
	        String rndKey = Integer.toString(rnd.nextInt(32000));
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        byte[] bytData = rndKey.getBytes();
	        md.update(bytData);
	        byte[] digest = md.digest();
	        for(int i =0;i<digest.length;i++)
	        {
	            boundary = boundary + Integer.toHexString(digest[i] & 0xFF);
	        }
	        boundary = "---------------------"+boundary.substring(0,11);

	        // ���� ����
	        String data = "";
	        String index = "";
	        String value = "";
	        for (int i=0;i<arrKey.length; i++)
	        {
	            index =  arrKey[i];
	            value = valKey[i];
	            data +="--"+boundary+"\r\n";
	            data += "Content-Disposition: form-data; name=\""+index+"\"\r\n";
	            data += "\r\n"+value+"\r\n";
	            data +="--"+boundary+"\r\n";
	        }

	        //out.println(data);

	        InetAddress addr = InetAddress.getByName(host);
	        Socket socket = new Socket(host, port);
	        // ��� ����
	        BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(),charsetType));
	        wr.write("POST "+path+" HTTP/1.0\r\n");
	        wr.write("Content-Length: "+data.length()+"\r\n");
	        wr.write("Content-type: multipart/form-data, boundary="+boundary+"\r\n");
	        wr.write("\r\n");

	        // ������ ����
	        wr.write(data);
	        wr.flush();

	        // ����� ���
	        BufferedReader rd = new BufferedReader(new InputStreamReader(socket.getInputStream(),charsetType));
	        String line;
	        String alert = "";
	        ArrayList tmpArr = new ArrayList();
	        while ((line = rd.readLine()) != null) {
	            tmpArr.add(line);
	        }
	        wr.close();
	        rd.close();

	        String tmpMsg = (String)tmpArr.get(tmpArr.size()-1);
	        String[] rMsg = tmpMsg.split(",");
	        String Result= rMsg[0]; //�߼۰��
	        String Count= ""; //�ܿ��Ǽ�
	        if(rMsg.length>1) {Count= rMsg[1]; }

	                        //�߼۰�� �˸�
	        if(Result.equals("success")) {
	            alert = "예약이 되었습니다.";
	            
	        }
	        else if(Result.equals("reserved")) {
	            alert = "���������� ����Ǿ����ϴ�";
	            alert += " �ܿ��Ǽ��� "+ Count+"�� �Դϴ�.";
	        }
	        else if(Result.equals("3205")) {
	            alert = "�߸��� ��ȣ�����Դϴ�.";
	        }
	        else {
	            alert = "[Error]"+Result;
	        }

	        out.println(nointeractive);

	        if(nointeractive.equals("1") && !(Result.equals("Test Success!")) && !(Result.equals("success")) && !(Result.equals("reserved")) ) {
	            out.println("<script>alert('" + alert + "')</script>");
	        }
	        else if(!(nointeractive.equals("1"))) {
	        	System.out.println(alert);
	            out.printf("<script>alert('%s')</script>",alert);
	        }
	        out.println("<script>location.href='"+returnurl+"';</script>");
	    }
	    
	    request.setAttribute("phone",(request.getParameter("rphone")).replaceAll("-", ""));
	    request.setAttribute("reservation", reservation);
	    request.setAttribute("certificationNumber", certificationNumber);
	    
	    return "reservation/certification_before";
		
	}
	public static String nullcheck(String str,  String Defaultvalue ) throws Exception
    {
         String ReturnDefault = "" ;
         if (str == null)
         {
             ReturnDefault =  Defaultvalue;
         }
         else if (str == "" )
        {
             ReturnDefault =  Defaultvalue;
         }
         else
         {
             ReturnDefault = str ;
         }
          return ReturnDefault ;
    }
	public static String base64Encode(String str)  throws java.io.IOException {
        sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
        byte[] strByte = str.getBytes();
        String result = encoder.encode(strByte);
        return result ;
    }
	public static String base64Decode(String str)  throws java.io.IOException {
        sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
        byte[] strByte = decoder.decodeBuffer(str);
        String result = new String(strByte);
        return result ;
    }
	
	@PostMapping(value = "/confirm_certification")
	public @ResponseBody String confirm_certification(@RequestBody Map<String, Object> data) throws Exception {
		Gson gson=new Gson();
		String phone=data.get("phone").toString();

		String jsonReservation=data.get("json_reservation").toString();		
		Reservation reservation=gson.fromJson(jsonReservation, Reservation.class);
		
		phone="0"+phone;
		reservation.setCustomerPhone(phone);
		jsonReservation=gson.toJson(reservation);
		return jsonReservation;
	}
	@GetMapping(value = "/and_test")
	public void and_test(HttpServletRequest request,HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");
		System.out.println("예약 완료");
		Gson gson=new Gson();
		String jsonReservation=request.getParameter("reservation");
		Reservation reservation=gson.fromJson(jsonReservation, Reservation.class);
		reservation.setCustomerName(request.getParameter("rcustomername"));
		reservationService.insertReservation(reservation);
		Map<String, Object> designer=reservationService.getDesignerNum(reservation.getDesignerNum());
		JsonObject jsonObject=new JsonObject();
		jsonObject.addProperty("designerPhone",designer.get("dphone").toString() );
		jsonObject.addProperty("customerName",reservation.getCustomerName());
		jsonObject.addProperty("reservationDate",reservation.getDate() );
		System.out.println(jsonObject.toString());
		response.getWriter().print(jsonObject.toString());
		
	}
	
	@GetMapping(value = "/sms_desinger")
	public String sms_desinger(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		String charsetType = "EUC-KR"; 
		request.setCharacterEncoding(charsetType);
		response.setCharacterEncoding(charsetType);
		
		String certification_number=request.getParameter("msg");
		System.out.println(certification_number);
		Gson gson=new Gson();		
		
		PrintWriter out=response.getWriter();
		String  action = nullcheck(request.getParameter("action"), "");
	    if(action.equals("go")) {

	        String sms_url = "";
	        sms_url = "https://sslsms.cafe24.com/sms_sender.php"; // SMS ���ۿ�û URL
	        String user_id = base64Encode("c2619zz"); // SMS���̵�
	        String secure = base64Encode("c498757e8e5aec4a77a07c684f92f2ec");//����Ű
	        String msg = base64Encode(nullcheck(request.getParameter("msg"), ""));
	        String rphone = base64Encode(nullcheck(request.getParameter("rphone"), ""));
	        String sphone1 = base64Encode(nullcheck(request.getParameter("sphone1"), ""));
	        String sphone2 = base64Encode(nullcheck(request.getParameter("sphone2"), ""));
	        String sphone3 = base64Encode(nullcheck(request.getParameter("sphone3"), ""));
	        
	        String rdate = base64Encode(nullcheck(request.getParameter("rdate"), ""));
	        String rtime = base64Encode(nullcheck(request.getParameter("rtime"), ""));
	        String mode = base64Encode("1");
	        String subject = "";
	        if(nullcheck(request.getParameter("smsType"), "").equals("L")) {
	            subject = base64Encode(nullcheck(request.getParameter("subject"), ""));
	        }
	        String testflag = base64Encode(nullcheck(request.getParameter("testflag"), ""));
	        String destination = base64Encode(nullcheck(request.getParameter("destination"), ""));
	        String repeatFlag = base64Encode(nullcheck(request.getParameter("repeatFlag"), ""));
	        String repeatNum = base64Encode(nullcheck(request.getParameter("repeatNum"), ""));
	        String repeatTime = base64Encode(nullcheck(request.getParameter("repeatTime"), ""));
	        String returnurl = nullcheck(request.getParameter("returnurl"), "");
	        String nointeractive = nullcheck(request.getParameter("nointeractive"), "");
	        String smsType = base64Encode(nullcheck(request.getParameter("smsType"), ""));

	        String[] host_info = sms_url.split("/");
	        String host = host_info[2];
	        String path = "/" + host_info[3];
	        int port = 80;

	        // ������ ���� ���� ����
	        String arrKey[]
	            = new String[] {"user_id","secure","msg", "rphone","sphone1","sphone2","sphone3","rdate","rtime"
	                        ,"mode","testflag","destination","repeatFlag","repeatNum", "repeatTime", "smsType", "subject"};
	        String valKey[]= new String[arrKey.length] ;
	        valKey[0] = user_id;
	        valKey[1] = secure;
	        valKey[2] = msg;
	        valKey[3] = rphone;
	        valKey[4] = sphone1;
	        valKey[5] = sphone2;
	        valKey[6] = sphone3;
	        valKey[7] = rdate;
	        valKey[8] = rtime;
	        valKey[9] = mode;
	        valKey[10] = testflag;
	        valKey[11] = destination;
	        valKey[12] = repeatFlag;
	        valKey[13] = repeatNum;
	        valKey[14] = repeatTime;
	        valKey[15] = smsType;
	        valKey[16] = subject;

	        String boundary = "";
	        Random rnd = new Random();
	        String rndKey = Integer.toString(rnd.nextInt(32000));
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        byte[] bytData = rndKey.getBytes();
	        md.update(bytData);
	        byte[] digest = md.digest();
	        for(int i =0;i<digest.length;i++)
	        {
	            boundary = boundary + Integer.toHexString(digest[i] & 0xFF);
	        }
	        boundary = "---------------------"+boundary.substring(0,11);

	        // ���� ����
	        String data = "";
	        String index = "";
	        String value = "";
	        for (int i=0;i<arrKey.length; i++)
	        {
	            index =  arrKey[i];
	            value = valKey[i];
	            data +="--"+boundary+"\r\n";
	            data += "Content-Disposition: form-data; name=\""+index+"\"\r\n";
	            data += "\r\n"+value+"\r\n";
	            data +="--"+boundary+"\r\n";
	        }

	        //out.println(data);

	        InetAddress addr = InetAddress.getByName(host);
	        Socket socket = new Socket(host, port);
	        // ��� ����
	        BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(),charsetType));
	        wr.write("POST "+path+" HTTP/1.0\r\n");
	        wr.write("Content-Length: "+data.length()+"\r\n");
	        wr.write("Content-type: multipart/form-data, boundary="+boundary+"\r\n");
	        wr.write("\r\n");

	        // ������ ����
	        wr.write(data);
	        wr.flush();

	        // ����� ���
	        BufferedReader rd = new BufferedReader(new InputStreamReader(socket.getInputStream(),charsetType));
	        String line;
	        String alert = "";
	        ArrayList tmpArr = new ArrayList();
	        while ((line = rd.readLine()) != null) {
	            tmpArr.add(line);
	        }
	        wr.close();
	        rd.close();

	        String tmpMsg = (String)tmpArr.get(tmpArr.size()-1);
	        String[] rMsg = tmpMsg.split(",");
	        String Result= rMsg[0]; //�߼۰��
	        String Count= ""; //�ܿ��Ǽ�
	        if(rMsg.length>1) {Count= rMsg[1]; }

	                        //�߼۰�� �˸�
	        if(Result.equals("success")) {
	            alert = "예약이 되었습니다.";
	            
	        }
	        else if(Result.equals("reserved")) {
	            alert = "���������� ����Ǿ����ϴ�";
	            alert += " �ܿ��Ǽ��� "+ Count+"�� �Դϴ�.";
	        }
	        else if(Result.equals("3205")) {
	            alert = "�߸��� ��ȣ�����Դϴ�.";
	        }
	        else {
	            alert = "[Error]"+Result;
	        }

	        out.println(nointeractive);

	        if(nointeractive.equals("1") && !(Result.equals("Test Success!")) && !(Result.equals("success")) && !(Result.equals("reserved")) ) {
	            out.println("<script>alert('" + alert + "')</script>");
	        }
	        else if(!(nointeractive.equals("1"))) {
	        	System.out.println(alert);
	            out.printf("<script>alert('%s')</script>",alert);
	        }
	        out.println("<script>location.href='"+returnurl+"';</script>");
	    }
	    
	    System.out.println(request.getParameter("test"));
		System.out.println("and_test");	    
	    return "redirect:/reservation";

		
		
	}
}
