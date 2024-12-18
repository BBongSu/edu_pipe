package com.pipe;

import java.io.IOException;

import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class CustomFilter extends OncePerRequestFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String method = request.getMethod();
        if (!method.matches("GET|POST|PUT|DELETE")) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid HTTP Method");
            return;
        }
        filterChain.doFilter(request, response);
    }
}
