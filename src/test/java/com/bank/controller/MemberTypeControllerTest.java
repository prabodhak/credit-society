package com.bank.controller;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
public class MemberTypeControllerTest {

	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.context).build();
	}
	
	@Test
	public void testMemberTypeController() {
		fail("Not yet implemented");
	}

	@Test
	public void testShowMemberTypes() {
		fail("Not yet implemented");
	}

	@Test
	public void testInitaccountMasterTypeCreationForm() {
		fail("Not yet implemented");
	}

	@Test
	public void testProcessCreationForm() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteMemberType() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateMemberType() {
		fail("Not yet implemented");
	}

}
