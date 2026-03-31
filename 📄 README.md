# Robot Framework Automation Project

This repository contains a complete Robot Framework automation framework including:

- UI tests (SeleniumLibrary)
- API tests (Custom Python library using Requests)
- Page Object Model structure
- Keywords modules
- Poetry-based dependency management
- Ready-to-run examples

---

## 📦 Project Structure:
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

---

## 🚀 1. Installation

### 1.1 Install Python

Ensure Python **3.8+** is installed:

```sh
python --version

Robot Framework requires Python 3.8 or newer.
(Official installation guide)
 [github.com]

🚀 2. Using Poetry (recommended)
Poetry manages dependencies and virtual environments automatically.
Install Poetry:
curl -sSL https://install.python-poetry.org | python3 -

(Recommended in RoboCon 2022 for Robot Framework dependency management)

Configure Poetry to place venv inside project:
poetry config virtualenvs.in-project true
(Best practice used in robotframework-poetry-demo)
 [github.com]
 Install dependencies:
 poetry install

This installs:

robotframework
robotframework-seleniumlibrary
requests
pyyaml

Dependency management rules are defined in Poety’s documentation.
 [python-poetry.org]

🚀 3. Running Tests

UI Tests
```bash
poetry run robot tests/ui/
```

API TEST
```bash
poetry run robot tests/api/
```

🔧 4. Browser Drivers
Selenium 4+ normally auto-downloads drivers using Selenium Manager,
but if needed, place chromedriver/geckodriver into drivers/.
(Driver automation explained in Selenium docs and reflected in tutorials)
 [qafeast.com]

🗂 5. Configuration
Edit credentials / URLs in:
resources/variables.robot
resources/config.yaml