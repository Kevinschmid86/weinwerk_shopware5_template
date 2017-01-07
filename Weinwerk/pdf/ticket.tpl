<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        body {
            font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;
        }

        .wrapper {
            padding:20px;
            border: 2px solid black;
        }

        .barcode {
            padding: 1.5mm;
            margin: 0;
            vertical-align: top;
            color: #000044;
        }
        .barcodecell {
            margin-top:15px;
            text-align: center;
            vertical-align: middle;
        }

        .col_50 {
            width: 50%;
            float:left;
        }

        .col_75 {
            width: 74%;
            float:left;
        }

        .col_25 {
            width: 25%;
            float:left;
        }

        .text-right {
            text-align: right;
        }

        .clear {
            clear: both;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="col_75">
            <h1>{$ticketName}</h1>
        </div>
        <div class="col_25">
            <div class="barcodecell">
                <barcode code="{$ticketId}" type="C128A" class="barcode" />
                <div class="barcodetext">{$ticketId}</div>
            </div>
        </div>
        <div class="clear"></div>

        <hr>

        <div class="col_50">
            <b>Bestellnummer:</b> {$orderNumber}
        </div>
        <div class="col_50 text-right">
            EUR {$price}
        </div>
        <div class="clear"></div>

        <hr>

        <table cellpadding="5">
            <tr>
                <th align="right">Veranstaltungs-Beginn:</th>
                <td>{$eventDatetime}</td>
            </tr>
            <tr>
                <th align="right">Veranstaltungs-Ort:</th>
                <td>{$eventLocation}</td>
            </tr>
        </table>

        <hr>

        {$config.ticketfooter}
    </div>
</body>
</html>