deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	PYTHONPATH=. python -m pytest --verbose -s

.PHONY: deps lint test run

run:
	python main.py