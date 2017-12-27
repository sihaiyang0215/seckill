package org.seckill.dao;

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
    int reduceNumber(long seckillId, Date killTime);


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
    List<Seckill> queryAll(int offset, int limit);
}
