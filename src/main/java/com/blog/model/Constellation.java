package com.blog.model;

public class Constellation {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column constellation.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column constellation.en_title
     *
     * @mbggenerated
     */
    private String enTitle;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column constellation.cn_title
     *
     * @mbggenerated
     */
    private String cnTitle;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column constellation.id
     *
     * @return the value of constellation.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column constellation.id
     *
     * @param id the value for constellation.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column constellation.en_title
     *
     * @return the value of constellation.en_title
     *
     * @mbggenerated
     */
    public String getEnTitle() {
        return enTitle;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column constellation.en_title
     *
     * @param enTitle the value for constellation.en_title
     *
     * @mbggenerated
     */
    public void setEnTitle(String enTitle) {
        this.enTitle = enTitle == null ? null : enTitle.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column constellation.cn_title
     *
     * @return the value of constellation.cn_title
     *
     * @mbggenerated
     */
    public String getCnTitle() {
        return cnTitle;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column constellation.cn_title
     *
     * @param cnTitle the value for constellation.cn_title
     *
     * @mbggenerated
     */
    public void setCnTitle(String cnTitle) {
        this.cnTitle = cnTitle == null ? null : cnTitle.trim();
    }
}