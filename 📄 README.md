# 🌐 **Robot Framework Automation Project**

A complete, production‑ready Robot Framework test automation project featuring:

- 🚀 UI tests (SeleniumLibrary)
- 🔌 API tests (custom Python library using Requests)
- 🧩 Page Object Model
- 🔁 Reusable Keywords
- 📦 Poetry‑based dependency management
- 🧪 Ready‑to‑run examples

---

# 📁 **Project Structure**

```
robot-framework-project/
│
├── tests/
│   ├── ui/
│   └── api/
├── resources/
│   ├── Keywords/
│   ├── Pages/
│   ├── variables.robot
│   └── config.yaml
├── libraries/
├── drivers/
├── pyproject.toml
└── README.md
```

---

# 🛠️ **1. Installation**

## ✅ 1.1 Install Python

Ensure Python **3.8+** is installed:

```sh
python --version
```

Robot Framework requires **Python 3.8 or newer**.

---

## 🔹 1.2 Create & Activate Virtual Environment (Recommended)

### Create venv:

```sh
python -m venv .venv
```

### Activate venv:

**Windows (CMD):**
```cmd
.venv\Scripts\activate
```

**Windows PowerShell:**
```powershell
.venv\Scripts\Activate.ps1
```

**Linux / macOS / Git Bash:**
```bash
source .venv/bin/activate
```

---

# 📦 **2. Using Poetry (Recommended)**

Poetry manages dependencies, virtual environments, version locking, and reproducible builds.

### ▶ Install Poetry

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

### ▶ Configure Poetry to use a `.venv` inside the project

```bash
poetry config virtualenvs.in-project true
```

### ▶ Install project dependencies

```bash
poetry install
```

This installs:

- `robotframework`  
- `robotframework-seleniumlibrary`  
- `requests`  
- `pyyaml`  

---

# ▶️ **3. Running Tests**

## 🔵 Run UI tests
```bash
poetry run robot tests/ui/
```

## 🟢 Run API tests
```bash
poetry run robot tests/api/
```

---

# 🔧 **4. Browser Drivers**

Selenium 4+ uses **Selenium Manager**, which usually auto‑installs browser drivers.  
If needed, you can manually place `chromedriver` or `geckodriver` into:

```
drivers/
```

---

# ⚙️ **5. Configuration**

Edit environment settings and credentials in:

```
resources/variables.robot
resources/config.yaml
```

---
