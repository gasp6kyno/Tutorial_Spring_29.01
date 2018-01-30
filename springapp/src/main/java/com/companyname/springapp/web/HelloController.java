package com.companyname.springapp.web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloController {

    protected final Log logger = LogFactory.getLog(getClass());

    @RequestMapping(value="/hello.htm")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        logger.info("Returning hello view");
//
//        return new ModelAndView("hello.jsp");
        
        String now = (new Date()).toString();
        logger.info("Returning hello view with " + now);
        
        return new ModelAndView("WEB-INF/views/hello.jsp", "now", now);
    }
    
    @RequestMapping(value="/servicios.htm")
    public ModelAndView llamarServicios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	String nombre = "Juan";
    	logger.info("Returning services");

        return new ModelAndView("servicios.jsp", "miNombre", nombre);
    }
}