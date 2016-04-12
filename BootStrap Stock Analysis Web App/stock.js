var companies = [{
  symbol: null,
  volume: 0,
  ask: 0,
  bid: 0 }, {
  symbol: null,
  volume: 0,
  ask: 0,
  bid: 0 }, {
  symbol: null,
  volume: 0,
  ask: 0,
  bid: 0 }];
var appengine="https://stocksearchengineapp.appspot.com/stockanalysis.php";
function TickStorage(dbPath, symbol, daystamp) { 
        this._dbPath = dbPath;
        this._symbol = symbol.toUpperCase();

        this._daystamp = (daystamp || '');

        var day = Date.parseDaystamp(this._daystamp);
        this._startUnixtime = day.unixtime();
        this._endUnixtime = this._startUnixtime+86400;

        this._path = dbPath+'/'+symbol+'/';
        this._filename = this._daystamp+'.ticks';

        this._bufferData = null; 
        this.minuteIndex = null;

        this._lastUnixtime=null;

        this.position=0;
        this.count=0;

        this.additionalData={};
        this._orphanTicks=[];

        this.marketTimeOnly = false;
        this.nextTick = this._nextTickAll;
    }
    
    
        function messages(megs) {
        megs = parseInt(megs) || 100;
        this._bufferData = new Buffer(1024*1024*megs);
        this.minuteIndex = new MinuteIndex();
        this.minuteIndex.setStartUnixtime(this._startUnixtime);
        this._lastUnixtime=0;
        this.position = 0;
        this.count=0;
        this.marketOpenPos = null;
        this.marketClosePos = null;
        this.additionalData={};
        this._orphanTicks=[];
    }
    
function initializeHistoryExample() {
    pubnubStocks.bind('mousedown,touchstart', loadHistoryBtn, function() {
      pubnubStocks.history({
        limit: 5,
        channel: 'MSFT',
        callback: function(msgs) {
          historyOut.innerHTML = JSON.stringify(msgs[0]);
        },
      });

      return false;
    });
  }   

function doLoad(localStoreList)
        {
            var refData_output='';
            var toRefresh=false;

            $.ajax({
                url: "https://stocksearchengineapp.appspot.com/stockanalysis.php",
                dataType: "jsonp",
                jsonpCallback : "myfunctionRef",
                data: {
                    refresh: localStoreList[counter]
                },
                async:false,
                success: function(data) {
                    var refData_output = data;
                    if (refData_output['Status'] == "SUCCESS") {
                        status = refData_output['Status'];
                        name = refData_output['Name'];
                        symbol = refData_output['Symbol'];
                        LastPrice = refData_output['LastPrice'];
                        if ((refData_output['ChangePercent'] > 0) && (refData_output['Change'] > 0)) {
                            var Change_ChangePer_out = '<span style="color:#40A040">' + Math.abs(Change) + " ( " + ChangePercent + " %) " + '</span>' + " <img src='http://cs-server.usc.edu:45678/hw/hw8/images/up.png'>";
                        } else {
                            var Change_ChangePer_out = '<span style="color:#D52121">' + Math.abs(Change) + " ( " + ChangePercent + " %) " + '</span>' + " <img src='http://cs-server.usc.edu:45678/hw/hw8/images/down.png'>";
                        }
                        MarketCap = refData_output['MarketCap'];
                        MarketCap = getMarketDataRef(MarketCap);
                        debugger;
                        high = '$ ' + refData_output['High'];
                        low = '$ ' + refData_output['Low'];
                        Open = '$ ' + refData_output['Open'];
                        if (toRefresh == true) {
                            var topo = symbol + "lastPrice";
                            $('#' + topo).html(LastPrince_out);
                            $('#' + symbol + "changeper").html(Change_ChangePer_out);
                            $('#' + symbol + "marketCap").html(MarketCap);
                        }
                        else
                        {
                            if ((refData_output['ChangePercent'] > 0) && (refData_output['Change'] > 0)) {
                                var refData_output = '<span style="color:#40A040">' + Math.abs(Change) + " ( " + ChangePercent + " %) " + '</span>' + " <img src='http://cs-server.usc.edu:45678/hw/hw8/images/up.png'>";
                            } else {
                                var Change_ChangePer_out = '<span style="color:#D52121">' + Math.abs(Change) + " ( " + ChangePercent + " %) " + '</span>' + " <img src='http://cs-server.usc.edu:45678/hw/hw8/images/down.png'>";
                            }

                            $('#stockTableImpl > tbody:last').append('<tr id=' + symbol + '><td><a id="symbolLinkN" href="javascript:void(0)">' + symbol + '</a></td><td>' + name + '</td><td id=' + symbol + 'lastPrice>' + LastPrince_out + '</td><td id=' + symbol + 'changeper' + '>' + Change_ChangePer_out + '</td><td id=' + symbol + 'marketCap' + '>' + MarketCap + '</td><td><p data-placement="top" data-toggle="tooltip" title="Delete"><button id="delButton" class="btn btn-default btn-sm remove" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td></tr>');
                        }
                        
                    }
                }
            });
        }

var newsFeed = function(inSymbol){
            $.ajax({
                data: {
                    news: inSymbol
                },
                url: "https://stocksearchengineapp.appspot.com/stockanalysis.php",
                dataType: "jsonp",
                jsonpCallback : "newsFeed",
                success: function(json){
                    generateNewsFeed(json);
                    console.log(json);
                },
                error: function(response,txtStatus){
                    console.log(response,txtStatus)
                },
                failure:function(res)
                {
                    alert(res);
                }
            });
        }


function updateStock(data, env, group, latency, ticker) {
    var stock;
    data.name = ticker;
    stock = stocks.get(ticker);

    if (typeof stock === 'undefined') {
      var div = pubnubStocks.create('div');

      stock = {};
      data.ticker = data.id = ticker;
      div.innerHTML = pubnubStocks.supplant(stockTemplate, data);
      stockTickers.insertBefore(div, firstDiv(stockTickers));
      stock.box    = pubnubStocks.$('stock-id-'     + ticker);
      stock.name   = pubnubStocks.$('stock-name-'   + ticker);
      stock.price  = pubnubStocks.$('stock-price-'  + ticker);
      stock.perc   = pubnubStocks.$('stock-perc-'   + ticker);
      stock.vol    = pubnubStocks.$('stock-vol-'    + ticker);

      // Set created value
      stocks.set(ticker, stock);
    }

    // Update UIstock
    updateStockDisplay(data, stock);
  }
  
  
    function updateStockDisplay(data, stock) {
    if (disabledTickers.has(data.name)) {
      return;
        }
    }
    
    
    
    function WorkingDays() {}

WorkingDays.nyseHolidays = {
	2010: {
		1:  [1, 18],
		2:  [15],
		4:  [2],
		5:  [31],
		7:  [5],
		9:  [6],
		11: [25],
		12: [24]
	},
	2011: {
		1:  [17],
		2:  [21],
		4:  [22],
		5:  [30],
		7:  [4],
		9:  [5],
		11: [24],
		12: [26]
	},
	2012: {
		1:  [2, 16],
		2:  [20],
		4:  [6],
		5:  [28],
		7:  [4],
		9:  [3],
		11: [22],
		12: [25]
	},
	2013: {
		1:  [1, 21],
		2:  [18],
		3:  [29],
		5:  [27],
		7:  [4],
		9:  [2],
		11: [28],
		12: [25]
	}
};

WorkingDays.nyseShortDays = {
	2011: {
		11: [25]
	}
};


WorkingDays.isNyseShortDay = function(day) {
	var entry = WorkingDays.nyseShortDays[day.getFullYear()];
	if (entry) {
		entry = entry[day.getMonth()+1];
		if (entry) {
			return entry.indexOf(day.getDate()) >= 0;
		}
	}
	return false;
};


WorkingDays.isNyseHoliday = function(day) {
	var entry = WorkingDays.nyseHolidays[day.getFullYear()];
	if (entry) {
		entry = entry[day.getMonth()+1];
		if (entry) {
			return entry.indexOf(day.getDate()) >= 0;
		}
	}
	return false;
};



WorkingDays.isWeekend = function(day) {
	var _d = day.getDay();
	return (_d == 6 || _d==0);
};

 function myChart(navSymbol){
            getStockData(true,navSymbol,true);
            console.log(navSymbol);
     var input =  {
                'Normalized': false,
                'NumberOfDays': 1095,
                'DataPeriod': "Day",
                'Elements': [{
                    'Symbol': navSymbol,
                    'Type': "price",
                    'Params': ["ohlc"]
                }]
            }
            if(navSymbol == '' && $('#inputid').val()!=''){
                $('#ErrorDiv').html('<span style="color:red">Please Select a valid Entry'+navSymbol+'</span>');
                return false;
            }
    
            var liveChartUrl = 'http://chart.finance.yahoo.com/t?s='+navSymbol.toString().toLowerCase()+'&lang=en-US&width=500&height=350';
            imgforFb='http://chart.finance.yahoo.com/t?s='+navSymbol.toString().toLowerCase()+'&lang=en-US&width=150&height=150';
            $("#chartPut").html('<img id="stockChart" src="'+liveChartUrl+'">');
            getChart(input);
            newsFeed(navSymbol);
            if($('#inputid').val()!='' || $('#inputid').val()==''){
                $('#nextPageButton').prop('disabled', false);
                $('#inputid').val(navSymbol);
                nextSlide();
            }
        }

WorkingDays.isNyseWorkingDay = function(day) {
	return (!WorkingDays.isNyseHoliday(day) && !WorkingDays.isWeekend(day));
};



WorkingDays.prevNyseDay = function(day) {
	var nextDate = day.clone();
	nextDate.addDays(-1);
	while (!WorkingDays.isNyseWorkingDay(nextDate)) {
		nextDate.addDays(-1);
	}
	return nextDate;
};


WorkingDays.nextNyseDay = function(day) {
	var nextDate = day.clone();
	nextDate.addDays(1);
	while (!WorkingDays.isNyseWorkingDay(nextDate)) {
		nextDate.addDays(1);
	}
	return nextDate;
};

function TimePeriod(str) {
	this.firstMinute=null;
	this.lastMinute=null;
	
	this._periodString = (str || '').replace(/ +/g,'');
	if (!str || str==='') {
		this._periods=[];
		this.isValid=true;
	} else { 
		this._parse();
	}
	
	this._baseUnixtime=0;
}

function timer() {
	var i, m;
	
	this.isValid=true;
	this._periods=[];

	this.firstMinute=null;
	this.lastMinute=null;

	var periods = this._periodString.split(',');
	for(i=0;i<periods.length;i++) {
		this._parseSinglePeriod(periods[i]);
	}
	
	for(m=0;m<1440;m++) {
		if (this._periods[m]) {
			if (this.firstMinute==null) {
				this.firstMinute=m;
			}
			this.lastMinute=m;
		}
	}
}

function time(unixtime) {
	var d = Date.parseUnixtime(unixtime);
	d.clearTime();
	this._baseUnixtime = d.unixtime();
}


function TimePeriod(str) {
	this.firstMinute=null;
	this.lastMinute=null;
	
	this._periodString = (str || '').replace(/ +/g,'');
	if (!str || str==='') {
		this._periods=[];
		this.isValid=true;
	} else { 
		this._parse();
	}
	
	this._baseUnixtime=0;
}


function minute() {
	if (!this.isValid) {
		return '';
	}

function timeDays() {
	var i, m;
	
	this.isValid=true;
	this._periods=[];

	this.firstMinute=null;
	this.lastMinute=null;

	var periods = this._periodString.split(',');
	for(i=0;i<periods.length;i++) {
		this._parseSinglePeriod(periods[i]);
	}
	
	for(m=0;m<1440;m++) {
		if (this._periods[m]) {
			if (this.firstMinute==null) {
				this.firstMinute=m;
			}
			this.lastMinute=m;
		}
	}
}
	
	var 
		firstMinute = this.getFirstMinute(),
		lastMinute = this.getLastMinute(),
		_periods=[],
		_periodsStrings=[],
		currentPeriodOpen, m;
	
	for(m=firstMinute;m<=lastMinute;m++) {
		if (this._periods[m]) {
			if (!currentPeriodOpen) {
				currentPeriodOpen=m;
			}
		} else { 
			if (currentPeriodOpen) {
				_periods.push([currentPeriodOpen,m-1]);
				currentPeriodOpen=undefined;
			}
		}
	}
	if (currentPeriodOpen) {
		_periods.push([currentPeriodOpen, lastMinute]);
	}
	
	_periods.forEach(function(period) {
		_periodsStrings.push(TimePeriod.minuteToTime(period[0])+"-"+TimePeriod.minuteToTime(period[1]+1));
	});
	return _periodsStrings.join(',').replace(/:00/g,'');
}

function calc(tickStorage, periodSizeInMinutes) {
	this.periodSize = periodSizeInMinutes || 1;
	this._tickStorage = tickStorage;
	
	this._calculatedMinuteIndex=[];
	this.candles={}; 
	
	this._calculateMinutes();
	this._calculate();
}

function marketCap(from, to) {
	var i;
	for (i=from;i<=to;i++) {
		console.log("%d: %s", i, util.inspect(this._calculatedMinuteIndex[i]));
	}
}

function cap(from, to) {
	var i;
	for (i=from;i<=to;i+=this.periodSize) {
		console.log("%d: %s", i, util.inspect(this.candles[i]));
	}
}

function stockChange(period) {
	var open=0, close=0, high=Number.MIN_VALUE, low=Number.MAX_VALUE, volume=0, ticks=0;
	
	var m;
	for (m=period-this.periodSize;m<period;m++) {
		var _minute = this._calculatedMinuteIndex[m];
		if (!open) {
			open = _minute.o;
			close = _minute.c;
		}
		
		if (_minute.c) {
			close = _minute.c;
			high = Math.max(high, _minute.h);
			low = Math.min(low, _minute.l);
			volume+=_minute.v;
			ticks+=_minute.t;
		}
		
	}
	
	if (open) {
		return {
			h: high,
			l: low,
			o: open,
			c: close,
			v: volume,
			t: ticks
		};
	} else { 
		return null;
	}
}

function period(tickStorage, period, from, to) {
	var _result=[];
	
	from = from||0;
	to = to||1440;
	
	var candles = new CandlesCalculator(tickStorage, period);
	var i;
	for(i=from+period;i<=to;i+=period) {
		var candle = candles.getCandle(i) || {};
		CandlesCalculator._setCandleHourMinute(candle, i);
		_result.push(candle);
	}
	
	return _result;
}

function storageLoc(dbPath, symbol, daystamp, period, from, to) {
	var tickStorage = new TickStorage(dbPath, symbol, daystamp);
	if (!tickStorage.load()) {
		return null;
	}
	
	return CandlesCalculator.getCandlesOfTickStorage(tickStorage, period, from, to);
}

function timerFormat () {
                var toggle, newDate, timeComponents = widget.find('.timepicker span[data-time-component]');

                if (!use24Hours) {
                    toggle = widget.find('.timepicker [data-action=togglePeriod]');
                    newDate = date.clone().add((date.hours() >= 12) ? -12 : 12, 'h');

                    toggle.text(date.format('A'));

                    if (isValid(newDate, 'h')) {
                        toggle.removeClass('disabled');
                    } else {
                        toggle.addClass('disabled');
                    }
                }
                timeComponents.filter('[data-time-component=hours]').text(date.format(use24Hours ? 'HH' : 'hh'));
                timeComponents.filter('[data-time-component=minutes]').text(date.format('mm'));
                timeComponents.filter('[data-time-component=seconds]').text(date.format('ss'));

                fillHours();
                fillMinutes();
                fillSeconds();
            }

function parser(f) {
	var i=1, x;
	var args = arguments;
	var len = args.length;
	var str = String(f).replace(formatRegExp, function(x) {
		if (i >= len) { return x; }
		switch (x) {
			case '%D':return Date.parseUnixtime(args[i++]).toFormat('YYYYMMDD');
			case '%T':return Date.parseUnixtime(args[i++]).toFormat('HH24:MI:SS');
			case '%s':return String(args[i++]);
			case '%d':return Number(args[i++]);
			case '%p':return parseInt(args[i++]).humanReadablePrice();
			case '%j':return JSON.stringify(args[i++]);
			case '%%':return '%';
			default:
				return x;
		}
	});
	for (x = args[i]; i < len; x = args[++i]) {
		if (x === null || typeof x !== 'object') {
			str += ' ' + x;
		} else {
			str += ' ' + util.inspect(x);
		}
	}
	return str;
}

var getChart = function (indata) {
    $.ajax({
					url: "https://stocksearchengineapp.appspot.com/stockanalysis.php",
					data: {
	              		chartSym: JSON.stringify(indata)
	            	},
					dataType: "jsonp",
					jsonpCallback : "chart",
					success: function(json){
						console.log(json);
						render(json);
						$('.highcharts-input-group').hide();
					},
					error: function(response,txtStatus){
						console.log(response,txtStatus)
					}
				});
			} 
            
            

function getChart()
{
    var symbol = $('#stockquote').val();


    var url = "http://chart.finance.yahoo.com/t?s=";

    $.getJSON(url, function (json)
    {

        var lastquote = json.query.results.quote.LastTradePriceOnly;
        $('#stock').text(lastquote);

    });
}



function getData() {
    var url = 'http://chart.finance.yahoo.com/t?s=';
    var symbol = $("#symbol").val();

    $.getJSON(url, 'q=' + data + "&format=json&diagnostics=true&env=http://datatables.org/alltables.env")
        .done(function (data) {
            $('#result').text("Price: " + data.query.results.quote.LastTradePriceOnly);
        })
        .fail(function (jqxhr, textStatus, error) {
            var err = textStatus + ", " + error;
            console.log('Request failed: ' + err);
        });
}