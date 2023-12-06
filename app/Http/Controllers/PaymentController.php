<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class PaymentController extends Controller
{
    public function execPostRequest($url, $data)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);
        return $result;
    }

    public function momo_payment(Request $request)
    {   

        $endpoint = "https://test-payment.momo.vn/gw_payment/transactionProcessor";

        // dd(setting('site.title'));
        $partnerCode = Voyager::setting('momo.partnerCode');
        // dd($partnerCode);
        $accessKey =  Voyager::setting('momo.accessKey');
        $secretKey =  Voyager::setting('momo.secretKey');
        $orderInfo = "Thanh toán qua MoMo";
        $amount = $request->total_momo;
        $orderId = time() ."";
        $returnUrl = config('app.url') ."/checkout";
        $notifyurl = config('app.url') ."/checkout";
        // Lưu ý: link notifyUrl không phải là dạng localhost
        $extraData = "merchantName=MoMo Partner";

        $requestId = time() . "";
        $requestType = "captureMoMoWallet";
        //before sign HMAC SHA256 signature
        $rawHash = "partnerCode=" . $partnerCode . "&accessKey=" . $accessKey . "&requestId=" . $requestId . "&amount=" . $amount . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&returnUrl=" . $returnUrl . "&notifyUrl=" . $notifyurl . "&extraData=" . $extraData;
        $signature = hash_hmac("sha256", $rawHash, $secretKey);
        $data = array('partnerCode' => $partnerCode,
            'accessKey' => $accessKey,
            'requestId' => $requestId,
            'amount' => $amount,
            'orderId' => $orderId,
            'orderInfo' => $orderInfo,
            'returnUrl' => $returnUrl,
            'notifyUrl' => $notifyurl,
            'extraData' => $extraData,
            'requestType' => $requestType,
            'signature' => $signature);
        $result = $this->execPostRequest($endpoint, json_encode($data));
        // dd($result);
        $jsonResult = json_decode($result, true);  // decode json

        return redirect()->to($jsonResult['payUrl']);
       
    }
}
