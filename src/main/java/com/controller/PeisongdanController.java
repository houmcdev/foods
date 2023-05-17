package com.controller;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.OrdersEntity;
import com.entity.PeisongdanEntity;
import com.entity.PeisongyuanEntity;
import com.entity.view.PeisongdanView;
import com.service.OrdersService;
import com.service.PeisongdanService;
import com.service.PeisongyuanService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * 配送单
 * 后端接口
 *
 * @author
 * @email
 * @date 2022-03-26 17:40:36
 */
@RestController
@RequestMapping("/peisongdan")
public class PeisongdanController {
    @Autowired
    private PeisongdanService peisongdanService;

    @Autowired
    private PeisongyuanService peisongyuanService;

    @Autowired
    private OrdersService ordersService;

    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, PeisongdanEntity peisongdan,
                  HttpServletRequest request) {

        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("shangjia")) {
            peisongdan.setShangjiabianhao((String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("peisongyuan")) {
            peisongdan.setPeisongzhanghao((String) request.getSession().getAttribute("username"));
        }
        EntityWrapper<PeisongdanEntity> ew = new EntityWrapper<PeisongdanEntity>();
        PageUtils page = peisongdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, peisongdan), params), params));
        request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

    /**
     * 前端列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, PeisongdanEntity peisongdan,
                  HttpServletRequest request) {
        EntityWrapper<PeisongdanEntity> ew = new EntityWrapper<PeisongdanEntity>();
        PageUtils page = peisongdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, peisongdan), params), params));
        request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(PeisongdanEntity peisongdan) {
        EntityWrapper<PeisongdanEntity> ew = new EntityWrapper<PeisongdanEntity>();
        ew.allEq(MPUtil.allEQMapPre(peisongdan, "peisongdan"));
        return R.ok().put("data", peisongdanService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(PeisongdanEntity peisongdan) {
        EntityWrapper<PeisongdanEntity> ew = new EntityWrapper<PeisongdanEntity>();
        ew.allEq(MPUtil.allEQMapPre(peisongdan, "peisongdan"));
        PeisongdanView peisongdanView = peisongdanService.selectView(ew);
        return R.ok("查询配送单成功").put("data", peisongdanView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        PeisongdanEntity peisongdan = peisongdanService.selectById(id);
        return R.ok().put("data", peisongdan);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        PeisongdanEntity peisongdan = peisongdanService.selectById(id);
        return R.ok().put("data", peisongdan);
    }


    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody OrdersEntity ordersEntity, HttpServletRequest request) {
        PeisongdanEntity<Object> peisongdanEntity = new PeisongdanEntity<>();
        peisongdanEntity.setId(new Date().getTime() + new Double(Math.floor(Math.random() * 1000)).longValue());
        peisongdanEntity.setDingdanbianhao(ordersEntity.getOrderid());
        peisongdanEntity.setMeishimingcheng(ordersEntity.getGoodname());
        peisongdanEntity.setTupian(ordersEntity.getPicture());
        peisongdanEntity.setPeisongdizhi(ordersEntity.getAddress());
        peisongdanEntity.setYonghuzhanghao(ordersEntity.getConsignee());
        peisongdanEntity.setLianxifangshi(ordersEntity.getTel());
        peisongdanEntity.setPeisongzhanghao(request.getSession().getAttribute("username").toString());

        PeisongyuanEntity peisongyuanEntity = peisongyuanService.selectOne(new EntityWrapper<PeisongyuanEntity>().eq("peisongzhanghao", peisongdanEntity.getPeisongzhanghao()));
        peisongdanEntity.setLianxidianhua(peisongyuanEntity.getLianxidianhua());
        peisongdanEntity.setPeisongxingming(peisongyuanEntity.getPeisongxingming());
        peisongdanEntity.setShangjiabianhao(ordersEntity.getShangjiabianhao());
        //新增配送单
        peisongdanService.insert(peisongdanEntity);

        //修改订单状态为已接单
        ordersEntity.setStatus("已接单");
        ordersService.updateById(ordersEntity);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody PeisongdanEntity peisongdan, HttpServletRequest request) {
        peisongdan.setId(new Date().getTime() + new Double(Math.floor(Math.random() * 1000)).longValue());
        //ValidatorUtils.validateEntity(peisongdan);

        peisongdanService.insert(peisongdan);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody PeisongdanEntity peisongdan, HttpServletRequest request) {
        peisongdan.setPeisongzhuangtai("配送中");
        peisongdanService.updateById(peisongdan);//全部更新

        OrdersEntity ordersEntity = ordersService.selectOne(new EntityWrapper<OrdersEntity>().eq("orderid", peisongdan.getDingdanbianhao()));
        ordersEntity.setStatus("配送中");
        ordersService.updateById(ordersEntity);
        return R.ok();
    }


    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        peisongdanService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

    /**
     * 提醒接口
     */
    @RequestMapping("/remind/{columnName}/{type}")
    public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request,
                         @PathVariable("type") String type, @RequestParam Map<String, Object> map) {
        map.put("column", columnName);
        map.put("type", type);

        if (type.equals("2")) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Calendar c = Calendar.getInstance();
            Date remindStartDate = null;
            Date remindEndDate = null;
            if (map.get("remindstart") != null) {
                Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
                c.setTime(new Date());
                c.add(Calendar.DAY_OF_MONTH, remindStart);
                remindStartDate = c.getTime();
                map.put("remindstart", sdf.format(remindStartDate));
            }
            if (map.get("remindend") != null) {
                Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
                c.setTime(new Date());
                c.add(Calendar.DAY_OF_MONTH, remindEnd);
                remindEndDate = c.getTime();
                map.put("remindend", sdf.format(remindEndDate));
            }
        }

        Wrapper<PeisongdanEntity> wrapper = new EntityWrapper<PeisongdanEntity>();
        if (map.get("remindstart") != null) {
            wrapper.ge(columnName, map.get("remindstart"));
        }
        if (map.get("remindend") != null) {
            wrapper.le(columnName, map.get("remindend"));
        }

        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            wrapper.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("peisongyuan")) {
            wrapper.eq("peisongzhanghao", (String) request.getSession().getAttribute("username"));
        }

        int count = peisongdanService.selectCount(wrapper);
        return R.ok().put("count", count);
    }


}
