package com.company;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.java.frej.Regex;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

/**
 * Created by user on 16.10.2015.
 */
@RestController
public class MainRestController {

    @RequestMapping(value = "/process", method = RequestMethod.GET)
    public @ResponseBody String showInfo() {
        return "FrejDemo REST API";
    }
    
    @RequestMapping(value = "/process", method = RequestMethod.POST)
    public @ResponseBody String doProcess(@RequestBody String jsonString) {

        Gson gson = new GsonBuilder().create();
        Request request = gson.fromJson(jsonString, Request.class);
        String result;

        boolean b = false;
        try {
            if (null == request.txtRegex || null == request.txtInput)
                throw new IOException();
            Regex r = new Regex(request.txtRegex);

            if (request.buttonId.equals("Exact"))
                b = r.match(request.txtInput);
            else if (request.buttonId.equals("Start"))
                b = r.matchFromStart(request.txtInput);
            else
                b = r.presentInSequence(request.txtInput) >= 0;
            if (b)
                result = r.getReplacement();
            else
                result = "//Not matched!";
        } catch (Exception ex) {
            result = "//Exception!";
        }
        request.txtInput = "";
        request.txtInput = "";
        request.buttonId = "";
        request.txtResult = result;
        return gson.toJson(request);
    }
}

class Request
{
    public String txtRegex;
    public String txtInput;
    public String buttonId;
    public String txtResult;

    public String getTxtRegex() {
        return txtRegex;
    }

    public void setTxtRegex(String txtRegex) {
        this.txtRegex = txtRegex;
    }

    public String getTxtInput() {
        return txtInput;
    }

    public void setTxtInput(String txtInput) {
        this.txtInput = txtInput;
    }

    public String getButtonId() {
        return buttonId;
    }

    public void setButtonId(String buttonId) {
        this.buttonId = buttonId;
    }

    public String getTxtResult() {
        return txtResult;
    }

    public void setTxtResult(String txtResult) {
        this.txtResult = txtResult;
    }
}
