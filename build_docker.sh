# Build image and add a descriptive tag
sudo docker build --tag=capstone-proj .

# Step 2
sudo docker run -p 8000:80 capstone-proj
