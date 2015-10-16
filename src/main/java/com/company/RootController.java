package com.company;

import net.java.frej.Regex;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

/**
 * Created by user on 15.10.2015.
 */
@Controller
public class RootController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    protected String gotoIndex() throws Exception {
        return "index.html";
    }
}
