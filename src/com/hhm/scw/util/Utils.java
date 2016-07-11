package com.hhm.scw.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class Utils {

    /**
     * 此方法用来调整图片的大小
     *
     * @param oldImage
     *            原始图像
     * @param resizeTimes
     *            需要缩小的倍数，缩小2倍为原来的1/2 ，这个数值越大，返回的图片越小
     * @return 返回处理后的图像
     */
    public static BufferedImage resizeImage(BufferedImage oldImage, float resizeTimes) {
        /* 原始图像的宽度和高度 */
        int width = oldImage.getWidth();
        int height = oldImage.getHeight();

        /* 调整后的图片的宽度和高度 */
        int toWidth = (int) (Float.parseFloat(String.valueOf(width)) / resizeTimes);
        int toHeight = (int) (Float.parseFloat(String.valueOf(height)) / resizeTimes);

        /* 新生成结果图片 */
        BufferedImage result = new BufferedImage(toWidth, toHeight, BufferedImage.TYPE_INT_RGB);

        result.getGraphics().drawImage(oldImage.getScaledInstance(toWidth, toHeight, java.awt.Image.SCALE_SMOOTH), 0, 0,
                null);
        return result;
    }

    /**
     * 此方法用来调整图片的大小
     *
     * @param oldImage
     *            原始图像
     * @param newWidth
     *            新图片宽度
     * @param newHeight
     *            新图片高度
     * @return 返回处理后的图像
     */
    public static BufferedImage resizeImage(BufferedImage oldImage, int newWidth, int newHeight) {
        /* 新生成结果图片 */
        BufferedImage result = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);

        result.getGraphics().drawImage(oldImage.getScaledInstance(newWidth, newHeight, java.awt.Image.SCALE_SMOOTH), 0,
                0, null);
        return result;
    }

    /**
     * 此方法用来调整图片的大小
     *
     * @param oldImageFile
     *            原始图像文件
     * @param newImageFile
     *            需要生成的图像文件
     * @param newWidth
     *            新图片宽度
     * @param newHeight
     *            新图片高度
     */
    public static boolean resizeImage(File oldImageFile, File newImageFile, int newWidth, int newHeight)
            throws IOException {
        BufferedImage oldImage = ImageIO.read(oldImageFile);
        BufferedImage newImage = resizeImage(oldImage, newWidth, newHeight);
        // 确保新图片文件的父目录被创建
        newImageFile.getParentFile().mkdirs();
        String filename = newImageFile.getName();
        String suffix = filename.substring(filename.lastIndexOf('.') + 1);

        // 返回是否创建成功
        return ImageIO.write(newImage, suffix, newImageFile);
    }

}
