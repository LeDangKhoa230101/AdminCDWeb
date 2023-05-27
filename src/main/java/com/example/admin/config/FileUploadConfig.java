package com.example.admin.config;

import javax.servlet.MultipartConfigElement;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class FileUploadConfig {

//	@Value("${file.upload-dir}")
//	private String uploadDir;
//
//	@Bean
//	public MultipartConfigElement multipartConfigElement() {
//		MultipartConfigFactory factory = new MultipartConfigFactory();
//		factory.setLocation(uploadDir);
//		return factory.createMultipartConfig();
//	}
//
//	@Bean
//	public CommonsMultipartResolver multipartResolver() {
//		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
//		resolver.setMaxUploadSizePerFile(10 * 1024 * 1024);
//		return resolver;
//	}

}
