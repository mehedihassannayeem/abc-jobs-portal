package com.abcjobportal.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.abcjobportal.interceptors.AdminLoginInterceptor;
import com.abcjobportal.interceptors.ContactFormInterceptor;
import com.abcjobportal.interceptors.EmailConfirmInvalidOtpInterceptor;
import com.abcjobportal.interceptors.LoginInterceptor;
import com.abcjobportal.interceptors.MasterLoginInterceptor;
import com.abcjobportal.interceptors.RegistrationInterceptor;
import com.abcjobportal.interceptors.ResetPasswordChaningInterceptor;
import com.abcjobportal.interceptors.ResetPasswordInterceptor;
import com.abcjobportal.interceptors.ResetPasswordInvalidOtpInterceptor;
import com.abcjobportal.interceptors.SearchedUserInterceptor;

// Spring MVC Configurations	(view resolver)
@Configuration
@EnableWebMvc
@ComponentScan("com.abcjobportal")
public class WebMvcConfig implements WebMvcConfigurer {

	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");

		return viewResolver;
	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(-1);
		return multipartResolver;
	}

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
	}

	public void addInterceptors(InterceptorRegistry registry) {

		//
		//
		// user side interceptor
		//
		//

		// user registration section
		registry.addInterceptor(new RegistrationInterceptor()).addPathPatterns("/registration-confirm-email");
		registry.addInterceptor(new EmailConfirmInvalidOtpInterceptor()).addPathPatterns("/registration-confirmation");

		// user login section
		registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/homepage");

		// forgot password section
		registry.addInterceptor(new ResetPasswordInterceptor()).addPathPatterns("/forgot-password-confirmation");
		registry.addInterceptor(new ResetPasswordChaningInterceptor()).addPathPatterns("/password-reset");
		registry.addInterceptor(new ResetPasswordInvalidOtpInterceptor()).addPathPatterns("/reset-account-password");

		// user searching function
		registry.addInterceptor(new SearchedUserInterceptor()).addPathPatterns("/searching-user-lists");

		// contact form section
		registry.addInterceptor(new ContactFormInterceptor()).addPathPatterns("/contact-form");

		//
		//
		// admin side interceptor
		//
		//
		registry.addInterceptor(new AdminLoginInterceptor()).addPathPatterns("/admin-homepage");
		registry.addInterceptor(new MasterLoginInterceptor()).addPathPatterns("/master-dashboard");
	}

}
