.PHONY: all clean test

all:
	python setup.py install

clean:
	find . -name "*.so" -o -name "*.pyc" -o -name "*.pyx.md5" | xargs rm -f

test:
	nosetests oct2py --with-doctest -v

coverage:
	nosetests oct2py -v --with-coverage --cover-package=oct2py
