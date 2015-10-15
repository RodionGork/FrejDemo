package com.company;

//import net.java.frej.Regex;
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
public class MainController {
    @RequestMapping(value = "/process", method = RequestMethod.POST)
    public ModelAndView doProcess(@RequestParam(value = "pattern") String txtRegex, @RequestParam(value = "input") String txtInput, @RequestParam(value = "button") String buttonType) {
        ModelAndView result = new ModelAndView("test");
        boolean b = false;
        /*try {
            if (null == txtRegex || null == txtInput)
                throw new IOException();
            Regex r = new Regex(txtRegex);

            if (buttonType.equals("Exact"))
                b = r.match(txtInput);
            else if (buttonType.equals("Start"))
                b = r.matchFromStart(txtInput);
            else
                b = r.presentInSequence(txtInput) >= 0;
            if (b)
                result.addObject("result", r.getReplacement());
            else
                result.addObject("result", "//Not matched!");
        } catch (Exception ex) {
            result.addObject("result", "//Exception!");
        }*/
        result.addObject("successful", b);
        return result;
    }
}
