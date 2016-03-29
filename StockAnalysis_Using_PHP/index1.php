<html>
    <title>
        Stock Search
    </title>
    <style>
        
    #mainbox {
			width: 400px;
			margin: 0 auto;
			border: 2px solid #cccccc;
			padding: 5px;
			line-height: 10pt;
            background-color: #F3F3F3;
		}    
    #output_box {
			margin: 0 auto;
			margin-top: 10px;
			text-align: left;
            border: 2px solid #DEDBDB;
		}    
    #empty_box {
			width: 800px;
			margin: 0 auto;
			border: px solid #DEDBDB;
			padding: 5px;
            background-color: #F3F3F3;
			line-height: 1pt;
			margin-top: 10px;
		}
    .h1_prop{
                text-align: center;
                margin-top: 5%;
            }
        
    #button{
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            background: white;
            border:2px solid #cccccc;
        }  
    
    </style>
    <body>
        <div id="mainbox">
          <p class="h1_prop"><font face="times new roman" size="6"><b><i>Stock Search</i></b></font> </p>
       <hr color="#cccccc">
            
            <form id="myForm" method="post" name="helloForm">
                <table>
                    <tr>
                        <td>
                            <b> Company Name or Symbol:</b>
                        </td>
                        <td>
                            <input id="textField" type="text" name="txtfield" height="20px" width="50px" style="border: 2px solid #cccccc" value="<?php  if(isset($_POST['moreInfo']) )
{echo $_POST['symbolInfo'];} else if(isset($_POST['txtfield']) ){echo $_POST['txtfield'];} else {echo "";}  ?>" required placeholder="Company Name/Symbol"
    oninvalid="this.setCustomValidity('Please enter Company Name or Symbol')"
    oninput="setCustomValidity('')" >
                        </td>
                        <td>&nbsp;</td>
                        </tr>
                        <td></td>
                        <td>
                            <input id="button" type="submit" value="Search">
                            <input id="button" type="button" type="reset" onclick="formReset();" value="Clear">
                        </td>
                    </tr>
                </table>
            </form>
      
        <div align="center"><a  href="http://www.markit.com/product/markit-on-demand" target="_blank" style="outline:none;">Powered by Markit on Demand</a></div>
        </div>
    <?php
        	if ($_SERVER["REQUEST_METHOD"] == "POST") {
                if(isset($_POST['moreInfo'])){
                    
                    $url = "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=".$_POST['moreInfo'];
                    $json = file_get_contents($url);
                    $obj = json_decode($json);
                    echo "</br>";
                    echo "<table id=\"output_box\" border=\"1\" width=\"600\" style=\"margin: 0 auto;\" rules=\"all\">";
                   
                    global $tableVariable, $arrowPath, $temp1,$temp2,$temp3,$temp4,$marketCap,$calcChangeYTD,$volume,$timestamp, $dummy;
                    $arrowPath = "http://cs-server.usc.edu:45678/hw/hw6/images/";
                    if($obj->Status == "SUCCESS"){
                        $tableVariable =  "<tr><td bgcolor=\"#F3F3F3\"><b>Name</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->Name. "</td></tr>";                        
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Symbol</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->Symbol. "</td></tr>";
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Last Price</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->LastPrice. "</td></tr>";
                        if($obj->Change > 0){
                            $temp1 = $arrowPath."Green_Arrow_Up.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->Change,2),2,'.',','). "<img src=\"$temp1\"  height=\"13\" width=\"13\"></td></tr>";
                        }
                        else if($obj->Change < 0){
                            $temp1 = $arrowPath."Red_Arrow_Down.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->Change,2),2,'.',','). "<img src=\"$temp1\"  height=\"13\" width=\"13\"></td></tr>";  
                        } 
                        else{
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->Change,2),2,'.',','). "</td></tr>";  
                        }
                        
                        if($obj->ChangePercent > 0){
                            $temp2 = $arrowPath."Green_Arrow_Up.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercent,2),2,'.',','). "%<img src=\"$temp2\" height=\"13\" width=\"13\"></td></tr>";
                        }
                        else if($obj->ChangePercent < 0){
                            $temp2 = $arrowPath."Red_Arrow_Down.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercent,2),2,'.',','). "%<img src=\"$temp2\"  height=\"13\" width=\"13\"></td></tr>";  
                        }
                        else{
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercent,2),2,'.',','). "%</td></tr>";  
                        }
                        
                        $timestamp = date_format(date_create($obj->Timestamp),"Y-m-d h:i A");
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Timestamp</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$timestamp. "</td></tr>";
                        
                        $marketCap = $obj->MarketCap/1000000000;
                        $marketCap = number_format(round($marketCap,2),2,'.',',');
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Market Cap</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$marketCap. " B</td></tr>";
                        
                        $volume = number_format($obj->Volume);
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Volume</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$volume. "</td></tr>";
                        
                        $calcChangeYTD = $obj->LastPrice - $obj->ChangeYTD;
                        if($calcChangeYTD > 0){
                            $temp3 = $arrowPath."Green_Arrow_Up.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($calcChangeYTD,2),2,'.',','). "<img src=\"$temp3\" height=\"13\" width=\"13\"></td></tr>";
                        }
                        else if($calcChangeYTD < 0){
                            $temp3 = $arrowPath."Red_Arrow_Down.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">(" .number_format(round($calcChangeYTD,2),2,'.',','). ")<img src=\"$temp3\"  height=\"13\" width=\"13\"></td></tr>";  
                        }
                        else{
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($calcChangeYTD,2),2,'.',','). "</td></tr>";  
                        }
                        
                        if($obj->ChangePercentYTD > 0){
                            $temp4 = $arrowPath."Green_Arrow_Up.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercentYTD,2),2,'.',','). "%<img src=\"$temp4\" height=\"13\" width=\"13\"></td></tr>";
                        }
                        else if($obj->ChangePercentYTD < 0){
                            $temp4 = $arrowPath."Red_Arrow_Down.png";
                            $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercentYTD,2),2,'.',','). "%<img src=\"$temp4\"  height=\"13\" width=\"13\"></td></tr>";  
                        }
                        else{
                         $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Change Percent YTD</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .number_format(round($obj->ChangePercentYTD,2),2,'.',','). "%</td></tr>";     
                        }
                        
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>High</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->High. "</td></tr>";
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Low</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->Low. "</td></tr>";
                        $tableVariable .= "<tr><td bgcolor=\"#F3F3F3\"><b>Open</b></td><td align=\"center\" bgcolor=\"#FAFAFA\">" .$obj->Open. "</td></tr>";
                        
                        echo $tableVariable;
                    }
                    else{
                        echo "<div id=\"empty_box\">";
                        echo "<p align='center'><b>There is no stock information available.</b></p>";
	                    echo "</div>";   
                    }
                    
                       
                }
                else{
                $apiURL = "http://dev.markitondemand.com/MODApis/Api/v2/Lookup/xml?input=" . urlencode($_POST['txtfield']);

				$xmlFile = simplexml_load_file($apiURL);
                $symbolName = $_POST['txtfield'];
				if ($xmlFile -> LookupResult -> count() > 0) {
					global $companyName, $companySymbol, $companyExchange;
                    echo "</br>";
					echo "<table id=\"output_box\" border=\"1\"  rules=\"all\" style=\"margin: 0 auto;\">";
						echo "<tr bgcolor=\"#F3F3F3\" border: 1px solid #DEDBDB;>";
							echo "<th>Name</th>";
							echo "<th>Symbol</th>";
							echo "<th>Exchange</th>";
							echo "<th>Details</th>";
						echo "</tr>";
						// read elements from xmlFile
						foreach ($xmlFile -> LookupResult as $LookupResult) {
							$companyName = $LookupResult -> Name;
							echo "<tr bgcolor=\"#FAFAFA\"><td>" . $companyName . "</td>";
							$companySymbol = $LookupResult -> Symbol;
							echo "<td>" . $companySymbol . "</td>";
							$companyExchange = $LookupResult -> Exchange;
							echo "<td>" . $companyExchange . "</td>";
							echo "<td><form action='' method ='post'><input type='hidden' name='moreInfo' value='$companySymbol'><input type='hidden' name='symbolInfo' value='$symbolName'><a href='javascript:;' onclick='parentNode.submit();' style='outline:none;'>More Info</form></a></form></td></tr>";
							
						}
					echo "</table>";
				}
				else {
					echo "<div id=\"empty_box\">";
					echo "<p align='center'><b>No records has been found.</b></p>";
					echo "</div>";
				}
                }
			}
           
    ?>

  <script>
			function formReset() {
                document.forms["helloForm"]["textField"].value="";
				var el1 = document.getElementById("output_box");
				var el2 = document.getElementById("empty_box");
                if(el1 != null){
				el1.parentNode.removeChild( el1 );
                }
                if(el2 != null){
				el2.parentNode.removeChild( el2 );
                }
                
			}
			function divRemove() {
				window.location.href = "index1.php";
			}
        </script>
            
  
    </body>
</html>