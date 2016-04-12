<?php session_start(); 
	if($_GET){
		if(isset($_GET['chartSymbol1'])){
			
			$inSelectedChartQuote = $_GET['chartSymbol1'];
			$url_symCode3 = "http://dev.markitondemand.com/MODApis/Api/v2/InteractiveChart/json?parameters=".$inSelectedChart;
			$json3 = file_get_contents($url_symCodechartSymbol1);
			$callback ='myfunctionchartSymbol1';
			echo $callback."(".$json3.")";
		
		}
        else if(isset($_GET['name'])){
        $inSelectedSymbbolR = $_GET['name'];
        $url_symCodeR = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=".$inSelectedname;
        $jsonR = file_get_contents($url_symCodeR);
        $callbackR ='chart';
        echo $callbackR."(".$jsonR.")";

    }
    else if(isset($_GET['quote'])){			
			$inSelectedSym = $_GET['quote'];
			$url_symCode2 = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=".$inSelectedSym;
			$json2 = file_get_contents($url_symCode2);
			$callback ='myfunction';
			echo $callback."(".$json2.")";
		
		}else if(isset($_GET['stock'])) {

        $inSymbol = $_GET['stock'];
        $url_symCode1 = "http://dev.markitondemand.com/MODApis/Api/v2/Lookup/json?input=".$inSymbol;
        $json = file_get_contents($url_symCode1);
        $callback ='stocksearchengineapp';
        echo $callback."(".$json.")";

    }
        else if(isset($_GET['symbol'])){
        $inSelectedSymbbolR = $_GET['symbol'];
        $url_symCodeR = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=".$inSelectedsymbol;
        $jsonR = file_get_contents($url_symCodesymbol);
        $callbackR ='myfunctionsymbol';
        echo $callbackR."(".$jsonR.")";

    }
        else if(isset($_GET['refresh'])){
        $inSelectedSymbbolR = $_GET['refresh'];
        $url_symCodeR = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=".$inSelectedSymbbolR;
        $jsonR = file_get_contents($url_symCodeR);
        $callbackR ='myfunctionRef';
        echo $callbackR."(".$jsonR.")";

    }
        else if(isset($_GET['news'])) {
            $newsFeed = '';
            $newsFeed = urlencode($_GET['news']);
            $accountKey = '/PJ037w2zPChaSU/5B2ErJMqSgTHXy6WVGWTNGrqVbU';
            $ServiceRootURL = 'http://api.datamarket.azure.com/Bing/Search/';
            $WebSearchURL = $ServiceRootURL . 'v1/News?$format=json&Query=';
            $context = stream_context_create(array(
                'http' => array(
                    'request_fulluri' => true,
                    'header'  => "Authorization: Basic " . base64_encode($accountKey . ":" . $accountKey)
                )
            ));
            $request = $WebSearchURL . urlencode( '\'' . $newsFeed . '\'');
            $response = file_get_contents($request, 0, $context);
            $callbackNW = 'newsFeed';
            echo $callbackNW . "(" . $response . ")";
        }
}
?>