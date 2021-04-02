#!/usr/bin/env python3
# content of test_sample.py
def func(x):
    return x + 1


def test_answer_sample_of_failure():
    assert func(3) == 5


def test_answer_sample_of_success():
    assert func(3) == 4
