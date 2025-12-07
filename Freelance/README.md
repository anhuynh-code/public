# FiverrJob_SMOTE (Classification Project)
This project addresses a binary classification challenge where the target variable (RESPONSE) was highly imbalanced. The goal was to build a robust predictive model using advanced data preprocessing and ensemble methods.

# Key Features
- **Class Imbalance Handling (SMOTE):** The dataset was heavily skewed (Original shape Counter({0: 43358, 1: 575})), necessitating the use of the Synthetic Minority Over-sampling Technique (SMOTE) to balance the classes and create a synthetic dataset (Resample dataset shape Counter({0: 43358, 1: 43358})).

- **Feature Selection:** Utilized SelectKBest with mutual information regression (mutual_info_regression) to rank features and identify the 22 most informative variables for the model.

- **Ensemble Modeling & Tuning:**

  * Model Comparison: Benchmarked performance between a Random Forest Classifier and a Gradient Boosting Classifier.

  * Hyperparameter Optimization: Used GridSearchCV with cross-validation to find optimal parameters for the Random Forest model, tuning variables like criterion, max_features, and n_estimators.

- **Evaluation:** The best-performing model (Gradient Boosting) achieved a high overall Test Accuracy of 0.978 and a macro-average F1-score of 0.98, confirming the effectiveness of the SMOTE technique.

# Skills Demonstrated
- Machine Learning Fundamentals (Classification)

- Imbalanced Data Handling (SMOTE)

- Feature Engineering and Selection (Mutual Information, SelectKBest)

- Ensemble Methods (Random Forest, Gradient Boosting)

- Hyperparameter Tuning (GridSearchCV, Cross-Validation)
