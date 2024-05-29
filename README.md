# coreapp

## Getting started for Developer

Install python version

```bash
brew install pyenv
pyenv verions
pyenv install --list
pyenv install 3.9.7
pyenv global 3.9.7
pyenv local 3.9.7
```

Create virtual environment

```bash
python -m venv venv
source venv/bin/activate
```

```bash
pyenv virtualenv 3.9.7 myenv
pyenv activate myenv
pyenv deactivate
```

```bash
pip freeze > requirements.txt
```