package com.springbook.biz.common;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterAdvice {

	@After("PointcutCommon.allPointcut()")
	public void finallyLog() {
		System.out.println("[사후 처리] 비즈니스 수행 후 동작");
	}
}

/*@Service
@Aspect
public class AfterAdvice {
	@After("PointcutCommon.allPointcut()")
	public void afterLog() {
		System.out.println("[사후 처리] 비즈니스 수행 후 동작");
	}
}*/
