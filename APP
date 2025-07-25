import streamlit as st
import pandas as pd
import numpy as np
import joblib
from datetime import datetime

# Load the trained model and label encoder
model = joblib.load("best_model.pkl")
encoder = joblib.load("label_encoder.pkl")

# App title
st.title("🛒 Dynamic Pricing Predictor for Kirana Stores")
st.markdown("""
This app recommends the best **price** for your product to maximize revenue based on:
- Past sales trends
- Demand
- Competitor prices
- Day and festival conditions
""")

# Input section
product = st.selectbox("Select Product", ['Rice', 'Wheat', 'Oil', 'Sugar', 'Turmeric'])
quantity_sold = st.slider("Expected Quantity Sold Today", 1, 100, 25)
competitor_price = st.number_input("Competitor Price (₹)", value=50)
avg_past_7_days_sales = st.slider("Average Sales in Past 7 Days", 1, 100, 30)
supply_cost = st.number_input("Supply Cost per Unit (₹)", value=40)
is_weekend = 1 if datetime.today().weekday() >= 5 else 0
is_festival = st.checkbox("Is today a festival day?")
day_of_week = datetime.today().weekday()

# Prediction button
if st.button("💰 Predict Optimal Selling Price"):
    product_encoded = encoder.transform([product])[0]

    features = pd.DataFrame([{
        "product_encoded": product_encoded,
        "quantity_sold": quantity_sold,
        "competitor_price": competitor_price,
        "avg_past_7_days_sales": avg_past_7_days_sales,
        "supply_cost": supply_cost,
        "is_weekend": is_weekend,
        "is_festival": int(is_festival),
        "day_of_week": day_of_week
    }])

    predicted_revenue = model.predict(features)[0]
    predicted_price = predicted_revenue / quantity_sold

    st.success(f"✅ Recommended Selling Price: ₹{predicted_price:.2f}")
    st.write(f"📈 Expected Revenue: ₹{predicted_revenue:.2f}")

# Footer
st.markdown("---")
st.caption("Built for small business owners to make smart pricing decisions.")
