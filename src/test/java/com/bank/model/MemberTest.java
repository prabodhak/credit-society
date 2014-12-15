package com.bank.model;

import static org.junit.Assert.*;

import org.junit.Test;

public class MemberTest {

	@Test
	public void testEqualsObject() {
		Member member1 = new Member();
		member1.setMemberId(1L);
		
		Member member2 = new Member();
		member2.setMemberId(1L);
		
		assertTrue(member1.equals(member1));
		assertTrue(member1.equals(member2));
		assertFalse(member1.equals(null));
	}

}
