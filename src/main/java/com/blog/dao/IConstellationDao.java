package com.blog.dao;

import com.blog.model.Constellation;

public interface ConstellationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    int insert(Constellation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    int insertSelective(Constellation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    Constellation selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Constellation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table constellation
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Constellation record);
}