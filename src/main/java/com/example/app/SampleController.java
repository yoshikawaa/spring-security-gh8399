package com.example.app;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {

    private final RedirectStrategy strategy;

    public SampleController() {
        DefaultRedirectStrategy strategy = new DefaultRedirectStrategy();
        strategy.setContextRelative(true);
        this.strategy = strategy;
    }

    @GetMapping("/")
    @ResponseBody
    public String home() {
        return "home";
    }

    @PostMapping("/redirect")
    public String post(HttpServletRequest request, HttpServletResponse response) throws IOException {
        strategy.sendRedirect(request, response, "https://google.com/");
        return null;
    }

}
