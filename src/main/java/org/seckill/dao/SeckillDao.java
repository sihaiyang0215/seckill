package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

public interface SeckillDao {
    /**
     * Reduce Inventory
     *
     * @param seckillId
     * @param killTime
     * @return the number of inventory is reduced
     */
    int reduceNumber(@Param("seckillId") long seckillId, @Param("killTime") Date killTime);


    /**
     * Seckill goods queried by ID
     *
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * Goods list based on offset
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(@Param("offset") int offset, @Param("limit") int limit);
}
