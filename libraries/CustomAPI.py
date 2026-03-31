import requests
import yaml
import os

CONFIG_PATH = os.path.join(os.path.dirname(__file__), "..", "resources", "config.yaml")

with open(CONFIG_PATH, "r") as f:
    config = yaml.safe_load(f)

BASE_URL = config["api_base_url"]


class CustomAPI:

    def Login(self, user, password):
        payload = {"userName": user, "password": password}
        r = requests.post(f"{BASE_URL}/api/Authenticate/Login", json=payload)
        r.raise_for_status()
        return r.text  # token is plain text in this API

    def GetAuth(self):
        r = requests.get(f"{BASE_URL}/api/Authenticate/Get")
        r.raise_for_status()
        return r.json()

    def GetComponentsByProductId(self, product_id):
        r = requests.get(f"{BASE_URL}/Components/GetComponentsByProductId/{product_id}")
        r.raise_for_status()
        return r.json()

    def GetProduct(self, product_id):
        r = requests.get(f"{BASE_URL}/Product/GetProductById/{product_id}")
        r.raise_for_status()
        return r.json()
