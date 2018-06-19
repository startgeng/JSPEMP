package com.kevin;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
public static Map<String, Emp> map = new HashMap<String,Emp>();
static{
	map.put("101", new Emp("101", "AA", "123456", "AA@qq.com"));
	map.put("102", new Emp("102", "AA", "123456", "BB@qq.com"));
	map.put("103", new Emp("103", "AA", "123456", "CCqq.com"));
	map.put("104", new Emp("104", "AA", "123456", "DD@qq.com"));
}

public static boolean selectEmpByAccountAndPassword(Emp emp){
	boolean flag = false;
	for(String key:map.keySet()){
		Emp e = map.get(key);
		if (emp.getAccount().equals(e.getAccount())&&emp.getPassword().equals(e.getPassword())) {
			flag = true;
			break;
		}
	}
	return flag;
}
}
