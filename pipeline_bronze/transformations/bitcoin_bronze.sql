CREATE OR REFRESH STREAMING LIVE TABLE bitcoin
TBLPROPERTIES ("quality" = "bronze")
AS
---Le os aquivos JSON usando cloud_files (Auto Loader)
selecy * from cloud_files(
  '/Volumes/lakehouse/raw_public/coinbase/coinbase/bitcoin_spot/)',--caminho de origem
  'json',
  map ()