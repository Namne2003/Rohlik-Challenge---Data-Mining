# Rohlik Challenge - Data Mining
Data Mining Project, solving challenge of Rohlik group. The competition is on Kaggle

* Data Mining project based on Rohlik sales predicting challenge which could be found on Kaggle. The
problem is to predict sales of any particular product at any warehouse of Rohlik group on certain day.
I have conducted preprocessing data, finding out the reasons for missing of data and filling them if
needed, this step required not only statistical or Computer Science knowledge but also the thrive
to deep dive in the European holiday culture - one of the most important factor that could explain
how sales of some products varied during the year from 2021-2024. After that, I performed data
integration by combining 3 separated csv files into one large dataset with more than 4 million rows,
loading all of them into star-chema datawarehouse using MySQL and uploading those data from data
warehouse to PowerBi for visualization and analysis. Ultimately, testing with 4 algorithms: XGBoost,
LSTM, LightBM and GRU. Positive outcome found with XGBoost and LightBM as I try to predict
sales for the next 14 days that are unseen, they both predict the variation trend pretty well on the
first 7 days but slighly less accurate for the second week
