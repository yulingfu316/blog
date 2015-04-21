package com.blog.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.Random;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class CheckCodeUtil {

	/**
	 * 将生成的验证码图片放在输出流中，并返回验证码字符串
	 * @param out
	 * @return 验证码
	 */
	public static String checkCodeImg(OutputStream out) {
		BufferedImage buffer = new BufferedImage(68, 22, BufferedImage.TYPE_3BYTE_BGR);
		Graphics graphics = buffer.createGraphics();
		graphics.setColor(Color.WHITE);
		graphics.drawRect(0, 0, 68, 22);
		char[] codes = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		Random random = new Random();
		StringBuilder sb = new StringBuilder();
		int index;
		graphics.setFont(new Font("Arial", Font.PLAIN, 14));
		for(int i=0; i<4; i++){
			index = random.nextInt(codes.length);
			graphics.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
			graphics.drawString(codes[index]+"", 8+15*i, 18);
			sb.append(codes[index]);
		}
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
		try {
			encoder.encode(buffer);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return sb.toString();
	}
	
}
