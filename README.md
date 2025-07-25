# Small-Market-price-prediction
Dynamic Pricing Predictor for Kirana Stores

This project is a data-driven pricing recommendation system designed to help local Kirana (grocery) stores optimize product pricing daily based on sales patterns, demand, competitor pricing, and more. Built using Python, scikit-learn, and Streamlit.

🧠 Problem Statement

Local Kirana stores often lose profit by keeping static prices for fast-selling products. They lack tools to adapt pricing based on day, demand, or market conditions.

💡 Solution

A smart pricing engine that predicts the best selling price each day to maximize revenue. It takes into account historical data, sales quantity, competitor pricing, supply cost, weekends, and festivals.

🛠️ Features

Predicts optimal product price for the day

Calculates expected total revenue

Inputs: quantity sold, supply cost, avg. past sales, competitor price

Considers day of week, weekends, festivals

Fully interactive Streamlit web app

🚀 How It Works

User selects a product and enters relevant features.

A trained ML model predicts total revenue.

Optimal price = Predicted revenue / Quantity

Display price & expected revenue in the app.

🧰 Tech Stack

Python 3

pandas, numpy

scikit-learn (RandomForestRegressor)

Streamlit (UI)

joblib (for model loading)

📂 File Structure

project-folder/
├── dynamic_pricing_app.py         # Streamlit app
├── best_model.pkl                 # Trained ML model
├── label_encoder.pkl              # Label encoder for products
├── requirements.txt               # Python dependencies
└── README.md                      # Project documentation

⚙️ Installation & Run

1. Clone the Repo

git clone https://github.com/Premnivash2003/Small-Market-price-prediction.git
cd kirana-dynamic-pricing

2. Install Dependencies

pip install -r requirements.txt

3. Run the App

streamlit run dynamic_pricing_app.py

🌐 Deployment

Use Streamlit Cloud:

Push the code to GitHub

Visit streamlit.io/cloud

Link your GitHub repo

Click deploy

📈 Example Use Case

Ramesh, a Kirana store owner, wants to price sugar optimally on a weekend. He inputs the expected demand, current supply cost, competitor price, and clicks predict. The app suggests ₹42/kg and shows he’ll make ₹840 in revenue. He confidently sets prices.

📬 Contact

Created with ❤️ by Prem Nivash 

🏁 Future Improvements

Add live data from Jiomart/Dmart

Forecast future demand

Incorporate customer footfall or weather API

Add SMS alerts for price tips
