import requests
import yaml
import os
from typing import Optional
import json

CONFIG_PATH = os.path.join(os.path.dirname(__file__), "..", "resources", "config.yaml")

with open(CONFIG_PATH, "r") as f:
    config = yaml.safe_load(f)

BASE_URL = config["api_base_url"]


class CustomAPI:

    def __init__(self, token: Optional[str] = None):

        self.token =  token if token else self._get_token()

    def _get_token(self) -> str:
                
        data, token = self.Login("admin", "password")
        
        return token

    def Login(self, user, password):
        payload = {"userName": user, "password": password}
        r = requests.post(f"{BASE_URL}/api/Authenticate/Login", json=payload)
        r.raise_for_status()
        data = r.json()
        self.token = data.get("token")

        return data, self.token

    
    def _headers(self):
        return {"Content-Type": "application/json",
                "Authorization": f"Bearer {self.token}"} if self.token else {}

    def GetAuth(self):
        r = requests.get(f"{BASE_URL}/api/Authenticate/Get", headers=self._headers())
        r.raise_for_status()
        return r.json()

    def GetComponentsByProductId(self, product_id):
        r = requests.get(f"{BASE_URL}/Components/GetComponentsByProductId/{product_id}", headers=self._headers())
        r.raise_for_status()
        return r.json()

    def GetProduct(self, product_id):
        r = requests.get(f"{BASE_URL}/Product/GetProductById/{product_id}", headers=self._headers())
        r.raise_for_status()
        return r.json()
