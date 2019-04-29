use assignment;

SELECT Date,
       RowNumber,
       ClosingPrice,
       WHEN RowNumber > 49 AND 20MA > 50MA THEN 'Buy',
	   WHEN RowNumber > 49 AND 20MA < 50MA THEN 'Sell'
          ELSE 'Hold'
       END as Signal
FROM  bajaj1
ORDER BY RowNumber;