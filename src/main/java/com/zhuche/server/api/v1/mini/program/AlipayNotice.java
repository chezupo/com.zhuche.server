package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.services.OrderService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;
import java.util.Objects;

@RestController("miniProgramAlipayNotice")
@RequestMapping("/api/v1/miniProgram/alipayNotice")
@AllArgsConstructor
@Validated
public class AlipayNotice {
    private final OrderService orderService;

    @PostMapping
    public String orderNotice(
        @PathParam("notify_time") String notify_time, // 通知的发送时间。格式为yyyy-MM-dd HH:mm:ss 2018-08-17 15:45:32
        @PathParam("notify_type") String notify_type, // 通知的类型 trade_status_sync
        @PathParam("notify_id") String notify_id, // 通知检验 ID ac05699524730693a8b330c5ecf72da9786
        @PathParam("app_id") String app_id, // 支付宝分配给开发者的应用 APPID 2018072300007148
        @PathParam("charset") String charset, // 编码格式，如：utf-8、gbk、gb2312 等 utf-8
        @PathParam("version") String version, // 调用的接口版本 1.0
        @PathParam("sign_type") String sign_type, // 商家生成签名字符所使用的签名算法类型，目前支持 RSA2 和 RSA，推荐使用 RSA2 RSA2
        @PathParam("sign") String sign, // 请参考文末 异步返回结果的验签 601510b7903cc63se0f2233fn39t
        @PathParam("trade_no") String trade_no, // 支付宝交易凭证号 2018112011001004330000121536
        @PathParam("out_trade_no") String out_trade_no, // 原支付请求的商家订单号 6823789339978248
        @PathParam("out_biz_no") String out_biz_no, // 商家业务 ID，主要是退款通知中返回退款申请的流水号 HZRF001
        @PathParam("buyer_id") String buyer_id, // 买家支付宝账号的 PID。以 2088 开头的纯 16 位数字 2088954725419999
        @PathParam("buyer_logon_id") String buyer_logon_id, // 买家支付宝账号 180****0043
        @PathParam("seller_id") String seller_id, // 卖家支付宝账号的PID。 以 2088 开头的纯 16 位数字 2088645122147777
        @PathParam("seller_email") String seller_email, // 卖家的支付宝账号 XXXX@alitest.com
        @PathParam("trade_status") String trade_status, // 交易目前所处的状态，见下表 交易状态说明 TRADE_CLOSED
        @PathParam("total_amount") Number total_amount, // 本次交易支付的订金金额，单位为人民币（元） 20
        @PathParam("receipt_amount") Number receipt_amount, // 商家在交易中实际收到的款项，单位为人民币（元） 15
        @PathParam("invoice_amount") Number invoice_amount, // 用户在交易中支付的可开发票的金额 10.00
        @PathParam("buyer_pay_amount") Number buyer_pay_amount, // 用户在交易中支付的金额 13.99
        @PathParam("point_amount") Number point_amount, // 使用集分宝支付的金额，单位为人民币（元） 12.00
        @PathParam("refund_fee") Number refund_fee, // 退款通知中，返回总退款金额，单位为人民币（元） 2.58
        @PathParam("subject") String subject, // 商品的标题/交易标题/订单标题/订单关键字等，是请求时对应的参数，在通知中原样传回 当面付交易
        @PathParam("body") String body, // 该笔订单的备注、描述、明细等。对应请求时的 body 参数，在通知中原样传回 当面付交易内容
        @PathParam("gmt_create") String gmt_create, // 该笔订单的创建时间。格式为 yyyy-MM- dd HH:mm:ss 2018-08-21 14:23:22
        @PathParam("gmt_payment") String gmt_payment, // 该笔订单买家付款的时间。格式为 yyyy-MM-dd HH:mm:ss 2018-08-21 14:23:22
        @PathParam("gmt_refund") String gmt_refund, // 该笔订单的退款时间。格式为 yyyy-MM-dd HH:mm:ss.S 2018-08-22 18:06:34.321
        @PathParam("gmt_close") String gmt_close, // 该笔订单的结束时间。格式为 yyyy-MM-dd HH:mm:ss 2018-08-22 18:06:34
        @PathParam("fund_bill_list") String fund_bill_list, // 支付成功的各个渠道金额信息，详见下表 资金明细信息说明 [{"amount":"15.00","fundChannel":"ALIPAYACCOUNT"}]
        @PathParam("passback_params") String passback_params, // 公共回传参数，如果请求时传递了该参数，则返回给商家时会在异步通知中原样传回该参数。本参数必须进行UrlEncode之后才可传入。 merchantBizType%3d3c%26merchantBizNo%3d2016010101111
        @PathParam("voucher_detail_list") String voucher_detail_list // 	本订单支付时所使用的所有优惠券信息，详见下表 优惠券信息说明
    ) {
        // todo 支付宝支付验签
        if (Objects.equals(trade_status, "TRADE_SUCCESS") || Objects.equals(trade_status, "TRADE_FINISHED")) {
            this.orderService.alipayOrderFinished(out_trade_no);
        }
        return "success";
    }
}
