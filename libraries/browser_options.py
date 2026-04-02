# browser_options.py

from selenium.webdriver import ChromeOptions

def chrome_ci_options():
    o = ChromeOptions()
    o.add_argument("--headless=new")
    o.add_argument("--no-sandbox")
    o.add_argument("--disable-dev-shm-usage")
    o.add_argument("--disable-gpu")
    o.add_argument("--disable-software-rasterizer")
    o.add_argument("--window-size=1920,1080")
    return o