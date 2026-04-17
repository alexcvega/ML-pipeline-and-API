This project outlines the development of a machine learning pipeline designed to predict a
patient's Body Mass Index (BMI) using health metrics from the Stroke Prediction Dataset. The
final solution includes a trained Random Forest Regressor deployed via a FastAPI web
service, ensuring real-time inference and high portability.

Dataset used:
https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset?resource=download

Sample Request:
JSON
{
"gender": "Female", "age": 42, "hypertension": 0,
"heart_disease": 0, "ever_married": "Yes",
"work_type": "Private", "Residence_type": "Rural",
"avg_glucose_level": 85.12, "smoking_status": "never smoked"
}

How to Run the Project
Install Python: Ensure Python 3.9+ is installed from python.org.
Execution: Double-click the setup_and_run.bat file.
Note: This script will automatically create a Virtual Environment, install all required
dependencies from requirements.txt, train the Random Forest model, and launch the API.
Access the API: Once the terminal says "Application startup complete," open your browser to:
http://127.0.0.1:8080/docs
Testing: Use the interactive Swagger UI to send a "POST" request with patient data to see the
live BMI prediction
