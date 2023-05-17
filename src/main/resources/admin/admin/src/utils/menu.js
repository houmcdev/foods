const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["新增", "查看", "修改", "删除", "审核"],
                    "menu": "商家",
                    "menuJump": "列表",
                    "tableName": "shangjia"
                }], "menu": "商家管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-goods",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "用户",
                    "menuJump": "列表",
                    "tableName": "yonghu"
                }], "menu": "用户管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-goods",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "配送员",
                    "menuJump": "列表",
                    "tableName": "peisongyuan"
                }], "menu": "配送员管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-form",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "菜品分类",
                    "menuJump": "列表",
                    "tableName": "caipinfenlei"
                }], "menu": "菜品分类管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看", "删除"],
                    "menu": "菜品信息",
                    "menuJump": "列表",
                    "tableName": "caipinxinxi"
                }], "menu": "菜品信息管理"
            }, {
                "child": [ {
                    "appFrontIcon": "cuIcon-camera",
                    "buttons": ["查看","修改"],
                    "menu": "未支付订单",
                    "tableName": "orders/未支付"
                }, {
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看"],
                    "menu": "已支付订单",
                    "tableName": "orders/已支付"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看",],
                    "menu": "已接单订单",
                    "tableName": "orders/已接单"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看", ],
                    "menu": "配送中订单",
                    "tableName": "orders/配送中"
                },{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看","删除",  "类销额", "品销额", "日销额", "月销额"],
                    "menu": "已送达订单",
                    "tableName": "orders/已送达"
                },{
                    "appFrontIcon": "cuIcon-send",
                    "buttons": ["查看","删除"],
                    "menu": "已退款订单",
                    "tableName": "orders/已退款"
                },  {
                    "appFrontIcon": "cuIcon-flashlightopen",
                    "buttons": ["查看","删除"],
                    "menu": "已取消订单",
                    "tableName": "orders/已取消"
                }, ], "menu": "订单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看", "删除"],
                    "menu": "配送单",
                    "menuJump": "列表",
                    "tableName": "peisongdan"
                }], "menu": "配送单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-flashlightopen",
                    "buttons": ["查看", "删除"],
                    "menu": "在线留言",
                    "menuJump": "列表",
                    "tableName": "liuyanbeizhu"
                }], "menu": "在线留言管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看","删除"],
                    "menu": "菜品评价",
                    "menuJump": "列表",
                    "tableName": "discusscaipinxinxi"
                }], "menu": "菜品评价管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "食堂资讯",
                    "tableName": "news"
                }, {"appFrontIcon": "cuIcon-brand", "buttons": ["新增", "查看", "修改", "删除"], "menu": "轮播图管理", "tableName": "config"}],
                "menu": "系统管理"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["新增", "查看", "修改", "删除", "查看评价"],
                    "menu": "菜品信息",
                    "menuJump": "列表",
                    "tableName": "caipinxinxi"
                }], "menu": "菜品信息管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-flashlightopen",
                    "buttons": ["查看", "回复"],
                    "menu": "在线留言",
                    "menuJump": "列表",
                    "tableName": "liuyanbeizhu"
                }], "menu": "在线留言管理"
            }, {
                "child": [ {
                    "appFrontIcon": "cuIcon-camera",
                    "buttons": ["查看","修改"],
                    "menu": "未支付订单",
                    "tableName": "orders/未支付"
                }, {
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看"],
                    "menu": "已支付订单",
                    "tableName": "orders/已支付"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看",],
                    "menu": "已接单订单",
                    "tableName": "orders/已接单"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看", ],
                    "menu": "配送中订单",
                    "tableName": "orders/配送中"
                },{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看",  "类销额", "品销额", "日销额", "月销额"],
                    "menu": "已送达订单",
                    "tableName": "orders/已送达"
                },{
                    "appFrontIcon": "cuIcon-send",
                    "buttons": ["查看",],
                    "menu": "已退款订单",
                    "tableName": "orders/已退款"
                },  {
                    "appFrontIcon": "cuIcon-flashlightopen",
                    "buttons": ["查看"],
                    "menu": "已取消订单",
                    "tableName": "orders/已取消"
                }, ], "menu": "订单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看"],
                    "menu": "配送单",
                    "menuJump": "列表",
                    "tableName": "peisongdan"
                }], "menu": "配送单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看","回复"],
                    "menu": "菜品评价",
                    "menuJump": "列表",
                    "tableName": "discusscaipinxinxi"
                }], "menu": "菜品评价管理"
            },],
            "hasBackLogin": "是",
            "hasBackRegister": "是",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "商家",
            "tableName": "shangjia"
        }, {
            "backMenu": [{
                "child": [  {
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看", "接单",],
                    "menu": "已支付订单",
                    "tableName": "orders/已支付"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看",],
                    "menu": "已接单订单",
                    "tableName": "orders/已接单"
                },{
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["查看",],
                    "menu": "配送中订单",
                    "tableName": "orders/配送中"
                },{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看",],
                    "menu": "已送达订单",
                    "tableName": "orders/已送达"
                }, ], "menu": "订单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看","发货"],
                    "menu": "配送单",
                    "menuJump": "列表",
                    "tableName": "peisongdan"
                }], "menu": "配送单管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看"],
                    "menu": "菜品评价",
                    "menuJump": "列表",
                    "tableName": "discusscaipinxinxi"
                }], "menu": "菜品评价管理"
            },],
            "hasBackLogin": "是",
            "hasBackRegister": "是",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "配送员",
            "tableName": "peisongyuan"
        },  {
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-flashlightopen",
                    "buttons": ["查看"],
                    "menu": "在线留言",
                    "menuJump": "列表",
                    "tableName": "liuyanbeizhu"
                }], "menu": "在线留言管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-album",
                    "buttons": ["查看","删除"],
                    "menu": "我的评价",
                    "menuJump": "列表",
                    "tableName": "discusscaipinxinxi"
                }], "menu": "我的评价管理"
            },{
                "child": [{
                    "appFrontIcon": "cuIcon-favor",
                    "buttons": ["查看", "删除"],
                    "menu": "我的收藏管理",
                    "tableName": "storeup"
                }], "menu": "我的收藏管理"
            }],
            "hasBackLogin": "否",
            "hasBackRegister": "否",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "用户",
            "tableName": "yonghu"
        }]
    }
}
export default menu;
