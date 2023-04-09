package com.springbook.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.springbook.biz..impl.*Impl.*(..))")
	public void allPointcut() {}

	@Pointcut("execution(* com.springbook.biz..impl.*Impl.get*(..))")
	public void getPointcut() {}
}
