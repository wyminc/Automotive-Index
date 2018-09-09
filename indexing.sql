SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
-- time -24ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- time -26ms

SELECT 
  make_code,
  model_code,
  model_title,
  year
FROM car_models
WHERE make_code = 'LAM'; 
--time -24ms

SELECT * FROM car_models WHERE year BETWEEN '2010' AND '2015';
--time -136ms

SELECT * FROM car_models WHERE year = '2010';
--time -42ms



CREATE INDEX index1 ON car_models(make_code) WHERE make_code = 'LAM';
CREATE INDEX index2 ON car_models(make_code, model_code) WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
CREATE INDEX index3 on car_models(year) WHERE year BETWEEN '2010' AND '2015';
CREATE INDEX index4 on car_models(year) WHERE year = '2010';


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM' ;
--time -2ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--time -2ms

--resues the first index, index1
SELECT 
  make_code,
  model_code,
  model_title,
  year
FROM car_models
WHERE make_code = 'LAM'; 
--time -4ms

SELECT * FROM car_models WHERE year BETWEEN '2010' AND '2015';
--time -99ms

SELECT * FROM car_models WHERE year = '2010';
--time -27ms
